.class public Lcom/kingroot/kinguser/bwm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bRs:[I

.field private static bRt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/bwm;->bRs:[I

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/kingroot/kinguser/bwm;->bRt:I

    return-void

    .line 33
    :array_0
    .array-data 4
        0x1
        0x5
        0x4
        0x8
        0x9
        0x2
    .end array-data
.end method

.method public static a(IILandroid/content/Context;ILandroid/util/SparseArray;Ljava/util/List;)Lcom/kingroot/kinguser/byi;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/bwu;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bww;",
            ">;)",
            "Lcom/kingroot/kinguser/byi;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    new-instance v3, Lcom/kingroot/kinguser/byi;

    invoke-direct {v3}, Lcom/kingroot/kinguser/byi;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, v3, Lcom/kingroot/kinguser/byi;->bTW:J

    .line 51
    const-string v0, ""

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->bTX:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kingroot/kinguser/bza;->S(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/byw;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/byw;->versionCode:I

    iput v0, v3, Lcom/kingroot/kinguser/byi;->bTZ:I

    .line 54
    const-string v0, "6D8B583F2D1668E0"

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->lc:Ljava/lang/String;

    .line 55
    const v0, 0x19a30

    iput v0, v3, Lcom/kingroot/kinguser/byi;->bUa:I

    .line 56
    iput p3, v3, Lcom/kingroot/kinguser/byi;->bQZ:I

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bwm;->nu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->bUb:Ljava/lang/String;

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 61
    :goto_0
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 62
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bwu;

    .line 63
    invoke-virtual {v0, p5}, Lcom/kingroot/kinguser/bwu;->cu(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 65
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid stateUnits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    new-instance v1, Lcom/kingroot/kinguser/byr;

    invoke-direct {v1}, Lcom/kingroot/kinguser/byr;-><init>()V

    .line 74
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byt;

    iget-wide v6, v0, Lcom/kingroot/kinguser/byt;->bUP:J

    iput-wide v6, v1, Lcom/kingroot/kinguser/byr;->bUI:J

    .line 75
    iput-object v4, v1, Lcom/kingroot/kinguser/byr;->bUJ:Ljava/util/ArrayList;

    .line 76
    iput p0, v1, Lcom/kingroot/kinguser/byr;->bJE:I

    .line 77
    iput p1, v1, Lcom/kingroot/kinguser/byr;->action:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->bTY:Ljava/util/ArrayList;

    .line 85
    invoke-static {p2}, Lcom/kingroot/kinguser/bnl;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bwm;->nu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->iE:Ljava/lang/String;

    .line 86
    invoke-static {p2}, Lcom/kingroot/kinguser/bnl;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bwm;->nu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->iF:Ljava/lang/String;

    .line 87
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwm;->nu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->kp:Ljava/lang/String;

    .line 88
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwm;->nu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->ko:Ljava/lang/String;

    .line 89
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwm;->nu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->bUc:Ljava/lang/String;

    .line 90
    invoke-static {p2}, Lcom/kingroot/kinguser/bwm;->bV(Landroid/content/Context;)I

    move-result v0

    iput v0, v3, Lcom/kingroot/kinguser/byi;->bUd:I

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, v3, Lcom/kingroot/kinguser/byi;->sdkVer:I

    .line 92
    const/4 v0, 0x2

    iput v0, v3, Lcom/kingroot/kinguser/byi;->iI:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/kingroot/kinguser/bnl;->eq(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bwm;->nu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-static {v2}, Lcom/kingroot/kinguser/bnl;->eq(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bwm;->nu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-static {p2}, Lcom/kingroot/kinguser/bnl;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bwm;->nu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->kj:Ljava/lang/String;

    .line 98
    const/16 v0, 0xc

    iput v0, v3, Lcom/kingroot/kinguser/byi;->bUg:I

    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/bwy;->aji()Lcom/kingroot/kinguser/bwy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwy;->ajj()Lcom/kingroot/kinguser/byh;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->bUj:Lcom/kingroot/kinguser/byh;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-static {p2}, Lcom/kingroot/kinguser/bxd;->ca(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-static {p2}, Lcom/kingroot/kinguser/bxk;->ci(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-static {p2}, Lcom/kingroot/kinguser/byg;->ci(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {p2}, Lcom/kingroot/kinguser/bxi;->ci(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    iput-object v0, v3, Lcom/kingroot/kinguser/byi;->bUl:Ljava/util/ArrayList;

    .line 110
    return-object v3
.end method

.method private static bV(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 118
    sget v0, Lcom/kingroot/kinguser/bwm;->bRt:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 120
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 121
    if-nez v0, :cond_0

    .line 122
    sget v0, Lcom/kingroot/kinguser/bwm;->bRt:I

    .line 131
    :goto_0
    return v0

    :cond_0
    move v1, v2

    move v3, v4

    .line 125
    :goto_1
    sget-object v5, Lcom/kingroot/kinguser/bwm;->bRs:[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 126
    sget-object v5, Lcom/kingroot/kinguser/bwm;->bRs:[I

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 127
    if-nez v5, :cond_1

    move v5, v2

    :goto_2
    shl-int/2addr v5, v1

    or-int/2addr v3, v5

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 127
    goto :goto_2

    .line 129
    :cond_2
    sput v3, Lcom/kingroot/kinguser/bwm;->bRt:I

    .line 131
    :cond_3
    sget v0, Lcom/kingroot/kinguser/bwm;->bRt:I

    goto :goto_0
.end method

.method private static nu(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 114
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
