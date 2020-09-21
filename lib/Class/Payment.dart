class payments{
  BigInt id;
  BigInt billing_address_id;
  BigInt player_id;
  BigInt coach_id;
  int amount;
  int currency;
  String charge_id;
  DateTime created_at;
  DateTime updated_at;

  payments({
    this.id,
    this.billing_address_id,
    this.player_id,
    this.coach_id,
    this.amount,
    this.currency,
    this.charge_id,
    this.created_at,
    this.updated_at,
  });
  etId(){
    return this.id;
  }
  getCoach_Id(){
    return this.coach_id;
  }
  getBilling_address_Id(){
    return this.billing_address_id;
  }
  getPlayer_id(){
    return this.player_id;
  }
  getAmount(){
    return this.amount;
  }
  getCurrency(){
    return this.currency;
  }
  getCharge_id(){
    return this.charge_id;
  }

  getCreated_at(){
    return this.created_at;
  }
  getUpdated_at(){
    return this.updated_at;
  }

  }
