hp += other.healing;
if (hp > hp_total){
    hp = hp_total;
}
instance_destroy(other);
