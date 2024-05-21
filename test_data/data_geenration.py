from faker import Faker

fake = Faker()


def generate_user():
    return {
        'name': fake.name(),
        'address': fake.address(),
        'email': fake.email()
    }
