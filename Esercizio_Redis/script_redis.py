import redis

def is_prime(G):
    if G < 2:
        return False
    for i in range(2, int(G**0.5) + 1):
        if G % i == 0:
            return False
    return True

r = redis.Redis(host='localhost', port=6379, decode_responses=True)

prime_position = 1
current_number = 2

while prime_position <= 1000:
    if is_prime(current_number):
        key = f"{prime_position}"
        r.set(key, current_number)
        r.expire(key, 1000)
        prime_position += 1
    current_number += 1

for position in range(1, 1001):
    key = f"{position}"
    value = r.get(key)
    ttl = r.ttl(key)
    print(f"Chiave: {key}, Valore: {value}, TTL: {ttl}")

