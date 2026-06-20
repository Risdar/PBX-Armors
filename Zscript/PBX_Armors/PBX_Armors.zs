//////////////////////////// RED ////////////////////////////////////////////////////////////////////////////////////
class PBX_RedArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent RED_PERCENT; 
        Armor.SaveAmount RED_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_Red"; 
        Inventory.AltHudIcon "ARM3A0";
        PBX_ArmorBase.ArmorToken 'PB_Berserk';
    }

    States 
    { 
        Spawn:
            ARM3 A 1 Bright;
            ARM3 A 2 Bright A_SpawnItem("RedFlareMedium",0,10);
            Loop;
    }

}

//////////////////////////// PURPLE ////////////////////////////////////////////////////////////////////////////////////
class PBX_PurpleArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent PURPLE_PERCENT; 
        Armor.SaveAmount PURPLE_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_Purple"; 
        Inventory.AltHudIcon "ARM6A0";
        PBX_ArmorBase.ArmorToken 'PB_Doomsphere';
    }

    States 
    { 
        Spawn:
            ARM6 A 1 Bright;
		    ARM6 A 1 Bright A_SpawnItem("PurpleFlareSmall",0,10);
            Loop; 
    }

}

//////////////////////////// WHITE ////////////////////////////////////////////////////////////////////////////////////
class PBX_WhiteArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent WHITE_PERCENT; 
        Armor.SaveAmount WHITE_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_White"; 
        Inventory.AltHudIcon "ARM4A0";
        PBX_ArmorBase.ArmorToken 'PBX_PowerRegeneration';
    }

    States 
    { 
        Spawn:
            ARM4 A 1 Bright;
		    ARM4 A 1 Bright A_SpawnItem("WhiteFlareSmall",0,10);
            Loop; 
    }

}

class PBX_PowerRegeneration : PB_PowerupGiver 
{
    Default
    {
        Powerup.Type "PowerRegeneration";
        Powerup.Duration REGEN_DURATION;
        Powerup.Strength REGEN_STRENGTH;
        Inventory.MaxAmount 0;
    }
}

//////////////////////////// ORANGE ////////////////////////////////////////////////////////////////////////////////////
class PBX_OrangeArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent ORANGE_PERCENT; 
        Armor.SaveAmount ORANGE_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_Orange"; 
        Inventory.AltHudIcon "ARM7A0";
        PBX_ArmorBase.ArmorToken 'PB_Infrared';
    }

    States 
    { 
        Spawn:
            ARM7 A 1 Bright;
		    ARM7 A 2 bright; // A_SpawnItem("OrangeFlareMedium",0,10);
            Loop; 
    }

}

//////////////////////////// YELLOW ////////////////////////////////////////////////////////////////////////////////////
class PBX_YellowArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent YELLOW_PERCENT; 
        Armor.SaveAmount YELLOW_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_Yellow"; 
        Inventory.AltHudIcon "ARM5A0";
    }

    States 
    { 
        Spawn:
            ARM5 A 1 Bright;
		    ARM5 A 2 Bright A_SpawnItem("YellowFlareMedium",0,10);
            Loop; 
    }

    override bool TryPickup(in out Actor toucher)
    {
        bool pickup = Super.TryPickup(toucher);
        if (pickup)
        {
            toucher.A_GiveInventory("PB_PowerIronFeet", 1);
            toucher.A_GiveInventory("PB_PowerSpeed", 1);
        }
        return pickup;
    }
}

//////////////////////////// BLACK ////////////////////////////////////////////////////////////////////////////////////
class PBX_BlackArmor : PBX_ArmorBase
{
    Default
    {
        Armor.SavePercent BLACK_PERCENT; 
        Armor.SaveAmount BLACK_AMOUNT; 
        Inventory.Pickupmessage "$PBXArmors_Black";
        Inventory.AltHudIcon "ARM8A0";
    }

    States 
    { 
        Spawn:
            ARM8 A 1 Bright;
		    ARM8 A 2 Bright;
            Loop; 
    }

    override bool TryPickup(in out Actor toucher)
    {
        bool pickup = Super.TryPickup(toucher);
        if (pickup)
        {
            toucher.A_GiveInventory("PB_GrenadeAmmo", 20);
            toucher.A_GiveInventory("PB_StunGrenadeAmmo", 20);
            toucher.A_GiveInventory("PB_ProxMineAmmo", 20);
            toucher.A_GiveInventory("PB_QuickLauncherAmmo", 20);
            toucher.A_GiveInventory("PB_LowCalMag", 20);
            toucher.A_GiveInventory("PB_HighCalMag", 20);
            toucher.A_GiveInventory("PB_RocketAmmo", 20);
            toucher.A_GiveInventory("PB_Cell", 20);
            toucher.A_GiveInventory("PB_Shell", 20);
            toucher.A_GiveInventory("PB_Fuel", 20);
            toucher.A_GiveInventory("PB_DTech", 20);
        }
        return pickup;
    }
}

//////////////////////////// DEMON ////////////////////////////////////////////////////////////////////////////////////
class PBX_DemonArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent DEMON_PERCENT; 
        Armor.SaveAmount DEMON_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_Demon"; 
        Inventory.AltHudIcon "ARM9A0";
        PBX_ArmorBase.ArmorToken 'RepulsorToken';
    }

    States 
    { 
        Spawn:
            ARM9 A 6 bright;
            ARM9 B 6 bright A_SpawnItem("RedFlareSmall",0,10);
            ARM9 C 6 bright;
            ARM9 B 6 bright A_SpawnItem("RedFlareSmall",0,10);
            Loop; 
    }

    override bool TryPickup(in out Actor toucher)
    {
        bool pickup = Super.TryPickup(toucher);
        if (pickup)
        {
            toucher.A_GiveInventory("PBX_PowerFrightener", 1);
            toucher.A_GiveInventory("PB_Berserk", 1);
            toucher.A_GiveInventory("PB_Doomsphere", 1);
        }
        return pickup;
    }
}

class PBX_PowerFrightener : PB_PowerupGiver 
{
    Default
    {
        Powerup.Type "PowerFrightener";
        Powerup.Color "Black", 0.2;
        Powerup.Duration FRIGHTENER_DURATION;
    }
}


//////////////////////////// CYAN ////////////////////////////////////////////////////////////////////////////////////
class PBX_CyanArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent CYAN_PERCENT; 
        Armor.SaveAmount CYAN_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_Cyan"; 
        Inventory.AltHudIcon "BRM1A0";
    }

    States 
    { 
        Spawn:
            BRM1 ABAA 2 BRIGHT; 
            Loop; 
    }

    override bool TryPickup(in out Actor toucher)
    {
        bool pickup = Super.TryPickup(toucher);
        if (pickup)
        {
            toucher.A_GiveInventory("PBX_PowerTimeFreezer", 1);
            toucher.A_GiveInventory("PBX_PowerSpeed", 1);   // Modified haste to have a shorter duration
        }
        return pickup;
    }
}

class PBX_PowerTimeFreezer : PB_PowerupGiver 
{
    Default
    {
        Powerup.Type "PowerTimeFreezer";
        Powerup.Color "GoldMap";
        Inventory.MaxAmount 0;
    }
}

class PBX_PowerSpeed : PB_PowerSpeed 
{
    Default
    {
        Powerup.Duration DOUBLESPEED_DURATION;
    }
}

//////////////////////////// DARK PURPLE ////////////////////////////////////////////////////////////////////////////////////
class PBX_DarkPurpleArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent DPURPLE_PERCENT; 
        Armor.SaveAmount DPURPLE_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_DarkPurple"; 
        Inventory.AltHudIcon "BRM4A0";
        PBX_ArmorBase.ArmorToken 'PBX_PowerInfiniteAmmo';
    }

    States 
    { 
        Spawn:
            BRM4 A 1; 
            BRM4 B 1 BRIGHT; 
            Loop; 
    }
}

class PBX_PowerInfiniteAmmo : PB_PowerupGiver 
{
    Default
    {
        Powerup.Type "PowerInfiniteAmmo";
        Powerup.Duration INFAMMO_DURATION;
        Inventory.MaxAmount 0;
    }
}

// Unused
// class AmmoRefillerToken : Inventory
// {
//     Default 
//     { 
//         Inventory.MaxAmount 1; 
//     }

//     override void DoEffect()
//     {
//         Super.DoEffect();

//         // If there is no armor, destroy
//         if (!Owner || Owner.CountInv("BasicArmor") <= 0 || Owner.CountInv("PBX_DarkPurpleArmor") <= 0) 
//         { 
//             Destroy(); 
//             return; 
//         }

//         // Always refill ammo
//         for (Inventory item = Owner.Inv; item != null; item = item.Inv)
//         {
//             if (item is 'Ammo') item.Amount = item.MaxAmount;
//         }
//     }
// }

//////////////////////////// DARK RED ////////////////////////////////////////////////////////////////////////////////////
class PBX_DarkRedArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent DRED_PERCENT; 
        Armor.SaveAmount DRED_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_DarkRed"; 
        Inventory.AltHudIcon "BRM7A0";
        PBX_ArmorBase.ArmorToken 'ReactiveArmorToken';
    }

    States 
    { 
        Spawn:
            BRM7 A 1 BRIGHT; 
            BRM7 B 1 BRIGHT; 
            Loop; 
    }

}

class ReactiveArmorToken : Inventory
{
    Default 
    { 
        Inventory.MaxAmount 1; 
    }

    int integrity;
    int cooldown;
    
    override void DoEffect()
    {
        Super.DoEffect();
        Inventory arm = Owner.FindInventory("BasicArmor");

        if (integrity == 0) integrity = 200;

        if (!Owner || !arm || integrity <= 0) 
        { 
            if (arm) arm.Destroy(); 
            Destroy(); 
            return; 
        }
        
        if (arm.Amount != integrity) arm.Amount = integrity;

        if (cooldown > 0) 
        { 
            cooldown--; 
            return; 
        }
        
        BlockThingsIterator it = BlockThingsIterator.Create(Owner, Owner.Radius + 32);
        while (it.Next())
        {
            Actor t = it.thing;
            if (!t || t == Owner || !t.bSHOOTABLE || t.Health <= 0) continue;
            
            if (Owner.Distance3D(t) <= (Owner.Radius + t.Radius + 8))
            {
                Owner.A_Explode(200, 128, XF_NOTMISSILE, false, 128);
                Owner.A_StartSound("handgrenade/Explosion", CHAN_BODY, 0, 1.0, ATTN_NORM);
                Owner.A_Quake(4, 15, 0, 400, "");

                for (int i = 0; i < 25; i++)
                {
                    Owner.A_SpawnItemEx("Spark_BD1", 
                        0, 0, 35,
                        frandom(-8, 8), frandom(-8, 8), frandom(2, 9),
                        0, SXF_NOCHECKPOSITION);
                }

                Owner.A_SetBlend("Orange", 0.6, 15);

                Vector3 pushDir = t.Vec3To(Owner).Unit() * -1; 
                t.Vel += pushDir * 30; t.Vel.Z += 8;

                integrity -= 10; 
                arm.Amount = integrity; 
                cooldown = 20; 
                break; 
            }
        }
    }
}


//////////////////////////// GOLD ////////////////////////////////////////////////////////////////////////////////////
class PBX_GoldArmor : PBX_ArmorBase
{
    Default
    {
        Armor.SavePercent GOLD_PERCENT;
        Armor.SaveAmount GOLD_AMOUNT;
        Inventory.PickupMessage "$PBXArmors_Gold";
        Inventory.AltHudIcon "BRM2A0";
        PBX_ArmorBase.ArmorToken 'MagneticToken';
    }

    States 
    { 
        Spawn:
            BRM2 A 1 BRIGHT; 
            BRM2 A 1 BRIGHT; 
            Loop; 
    }
    
}

class MagneticToken : Inventory
{
    Default 
    { 
        Inventory.MaxAmount 1; 
    }
    
    override void DoEffect()
    {
        Super.DoEffect();
        if (!Owner || Amount <= 0) return;

        double pickupRadius = 256.0;

        BlockThingsIterator it = BlockThingsIterator.Create(Owner, pickupRadius);
        while (it.Next())
        {
            Actor obj = it.thing;
            if (!obj || obj == Owner || !obj.bSPECIAL) continue;
            bool shouldPickup = (
                 obj is 'PB_HealthBonus')   || 
                (obj is 'PB_ArmorBonus')    || 
                (obj is 'PB_Backpack')      || 
                (obj is 'PB_WeaponBase')    || 
                (obj is 'PB_UpgradeItem')   || 
                (obj is 'Ammo'
            );
            
            if (shouldPickup && Owner.Distance3D(obj) <= pickupRadius)
            {
                Vector3 direccion = obj.Vec3To(Owner);
                direccion = direccion.Unit();
                obj.Vel = direccion * 10;
                obj.bNoFriction = true;
            }
        }
    }
}

//////////////////////////// GRAY ////////////////////////////////////////////////////////////////////////////////////
class PBX_GrayArmor : PBX_ArmorBase
{
    Default
    {
        Inventory.AltHudIcon "DUMYA0";
    }

    States 
    { 
        Spawn:
            DUMY A 1 BRIGHT; 
            DUMY A 1 BRIGHT; 
            Loop; 
    }

    override bool TryPickup (in out Actor toucher)
    {
        int rPercent        = Random(1, GRAY_PERCENT);
        int rAmount         = Random(1, GRAY_AMOUNT); 
        
        self.SavePercent    = rPercent;
        self.SaveAmount     = rAmount; 
        
        bool pickedUp = Super.TryPickup(toucher);

        // Just so it doesnt spam you with the log messages
        if(pickedUp)
        {
            toucher.A_Log(String.Format("$PBXArmors_Gray"));
            toucher.A_Log(String.Format("%d Durability, %d%% Protection", rAmount, rPercent));
        }
        
        return Super.TryPickup(toucher);
    }
}


//////////////////////////// LIGHT BLUE ////////////////////////////////////////////////////////////////////////////////////
class PBX_LightBlueArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent LBLUE_PERCENT; 
        Armor.SaveAmount LBLUE_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_LightBlue"; 
        Inventory.AltHudIcon "BRM3A0";
        PBX_ArmorBase.ArmorToken 'AquaticToken';
    }

    States 
    { 
        Spawn:
            BRM3 A 1 BRIGHT; 
            BRM3 A 1 BRIGHT; 
            Loop; 
    }

}

class AquaticToken : Inventory
{
    Default 
    { 
        Inventory.MaxAmount 1; 
    }

    override void DoEffect()
    {
        Super.DoEffect();
        
        let pp = PlayerPawn(Owner);

        if (!pp || !Owner || Owner.CountInv("BasicArmor") <= 0) 
        {
            if (Owner) Owner.Speed = Owner.Default.Speed;
            Destroy();
            return;
        }

        // Give infinite oxygen when underwater
        if (Owner.WaterLevel == 3) 
        {
            pp.ResetAirSupply();
        }

        // Increase speed on water
        if (Owner.WaterLevel >= 1) 
        {
            Owner.Speed = Owner.Default.Speed * 2.5; 
        }
        else 
        {
            Owner.Speed = Owner.Default.Speed;
        }
    }
}

//////////////////////////// LIGHT GREEN ////////////////////////////////////////////////////////////////////////////////////
class PBX_LightGreenArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent LGREEN_PERCENT; 
        Armor.SaveAmount LGREEN_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_LightGreen"; 
        Inventory.AltHudIcon "BRM6A0";
        PBX_ArmorBase.ArmorToken 'SecondChanceToken';
    }

    States 
    { 
        Spawn:
            BRM6 A 1 BRIGHT; 
            BRM6 A 1 BRIGHT; 
            Loop; 
    }

}

class GuardianEffectArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent GUARDIAN_PERCENT; 
        Armor.SaveAmount GUARDIAN_AMOUNT; 
    }
}

class SecondChanceToken : Inventory
{
    Default 
    { 
        Inventory.MaxAmount 1; 
    }

    override void DoEffect()
    {
        Super.DoEffect();
        
        if (!Owner) return;

        if (Owner.Health <= LGREEN_THRESHOLD)
        {
            Owner.A_SetHealth(200);
            Owner.GiveInventory("GuardianEffectArmor", 1);
            Owner.GiveInventory("InvulnerabilitySphere", 1);
            Owner.A_StartSound("INVUL", CHAN_ITEM, 0, 1.0, ATTN_NONE);
            Owner.A_SetBlend("Gold", 0.8, 35);
            Destroy();
        }
    }
}

//////////////////////////// PINK ////////////////////////////////////////////////////////////////////////////////////
class PBX_PinkArmor : PBX_ArmorBase
{
    Default 
    { 
        Armor.SavePercent PINK_PERCENT; 
        Armor.SaveAmount PINK_AMOUNT; 
        Inventory.PickupMessage "$PBXArmors_Pink"; 
        Inventory.AltHudIcon "BRM5A0";
        PBX_ArmorBase.ArmorToken 'RepulsorToken';
    }

    States 
    { 
        Spawn:
            BRM5 A 1 BRIGHT; 
            BRM5 A 1 BRIGHT; 
            Loop; 
    }

}

class EnemyStunDebuff : Inventory
{
    Default 
    { 
        Inventory.MaxAmount 1; 
    }

    int timer;

    override void DoEffect()
    {
        Super.DoEffect();
        if (!Owner) 
        { 
            Destroy(); 
            return; 
        }

        // Max timer is 140 tic
        if (timer == 0) timer = 140;

        // Every 15 tic forces the actor to its pain state
        if (timer % 15 == 0) Owner.SetStateLabel("Pain");

        // Slow them down
        Owner.Vel.X *= 0.8; Owner.Vel.Y *= 0.8;

        // Decrease the timer
        timer--;

        // Destroy if the timer is up
        if (timer <= 0) Destroy();
    }
}

class RepulsorToken : Inventory
{
    Default 
    { 
        Inventory.MaxAmount 1; 
    }

    override void DoEffect() 
    { 
        Super.DoEffect(); 
        if (!Owner || Owner.CountInv("BasicArmor") <= 0) 
            Destroy(); 
    }

    override void ModifyDamage(int damage, Name damageType, out int newdamage, bool passive, Actor inflictor, Actor source, int flags)
    {
        if (passive && source && source != Owner)
        {
            if (damageType == 'Melee' || Owner.Distance3D(source) <= 100)
            {
                Vector3 pDir = Owner.Vec3To(source).Unit();
                source.Vel += pDir * 25; 
                source.Vel.Z += 5;
                source.GiveInventory("EnemyStunDebuff", 1);
                newdamage = 0;
            }
        }
        Super.ModifyDamage(damage, damageType, newdamage, passive, inflictor, source, flags);
    }
}

