.class public Lcom/kingroot/kinguser/vt;
.super Lcom/kingroot/kinguser/vs;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/network/statics/ActionStatsID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/vt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/vs",
        "<",
        "Lcom/kingroot/kinguser/b;",
        ">;",
        "Lcom/kingroot/common/network/statics/ActionStatsID;"
    }
.end annotation


# static fields
.field private static final Lk:[I

.field private static final Ll:[I

.field private static final Lm:[I

.field private static final Ln:[I

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/vt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Li:Lcom/kingroot/kinguser/vt$a;

.field private Lj:Lcom/kingroot/kinguser/c;

.field private final Lo:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/kingroot/kinguser/vt$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/vt$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/vt;->sInstance:Lcom/kingroot/kinguser/cce;

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/vt;->Lk:[I

    .line 53
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kingroot/kinguser/vt;->Ll:[I

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/kingroot/kinguser/vt;->Lm:[I

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/kingroot/kinguser/vt;->Ln:[I

    return-void

    .line 43
    :array_0
    .array-data 4
        0x61578
        0x61579
        0x61581
        0x61573
        0x61572
        0x6157f
        0x61580
    .end array-data

    .line 53
    :array_1
    .array-data 4
        0x6157e
        0x6157a
        0x61577
        0x61574
        0x61575
        0x61576
        0x6157d
        0x6156f
        0x6156e
        0x61582
        0x61583
    .end array-data

    .line 70
    :array_2
    .array-data 4
        0x6157c
        0x6157b
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;-><init>()V

    .line 40
    new-instance v0, Lcom/kingroot/kinguser/vt$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/vt$a;-><init>(Lcom/kingroot/kinguser/vt$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vt;->Li:Lcom/kingroot/kinguser/vt$a;

    .line 111
    new-instance v0, Lcom/kingroot/kinguser/vt$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vt$2;-><init>(Lcom/kingroot/kinguser/vt;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vt;->Lo:Lcom/kingroot/kinguser/wo;

    .line 87
    new-instance v0, Lcom/kingroot/kinguser/c;

    invoke-direct {v0}, Lcom/kingroot/kinguser/c;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vt;->Lj:Lcom/kingroot/kinguser/c;

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/vt;->Lj:Lcom/kingroot/kinguser/c;

    const/16 v1, 0x49

    iput v1, v0, Lcom/kingroot/kinguser/c;->dR:I

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/vt;->Lj:Lcom/kingroot/kinguser/c;

    const-string v1, "2BA5F14C3BF42C33"

    iput-object v1, v0, Lcom/kingroot/kinguser/c;->lc:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/vt;->Lj:Lcom/kingroot/kinguser/c;

    const/16 v1, 0xa4

    iput v1, v0, Lcom/kingroot/kinguser/c;->dS:I

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/vt;->Lj:Lcom/kingroot/kinguser/c;

    const-string v1, "1.5.1-beta1_64"

    iput-object v1, v0, Lcom/kingroot/kinguser/c;->version:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/vt;->Lj:Lcom/kingroot/kinguser/c;

    sget-object v1, Lcom/kingroot/kinguser/qs;->EZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/c;->dT:Ljava/lang/String;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/vt$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/vt;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vt;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/vt;->lV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kingroot/kinguser/vt;->Lk:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kingroot/kinguser/vt;->Ll:[I

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/vt;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/vt;->lW()Z

    move-result v0

    return v0
.end method

.method public static lT()Lcom/kingroot/kinguser/vt;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/kingroot/kinguser/vt;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vt;

    return-object v0
.end method

.method private lV()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lK()Ljava/util/List;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/vt;->D(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lJ()V

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lW()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lB()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lG()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lI()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lC()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/kingroot/kinguser/vz;->P(J)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/kingroot/kinguser/vq;->C(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/vu;->md()Lcom/kingroot/kinguser/vu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/vu;->mk()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/kingroot/kinguser/vq;->C(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/vt;->D(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/wc;->nh()Lcom/kingroot/kinguser/wc;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/kingroot/kinguser/wc;->T(J)V

    .line 159
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lE()V

    .line 160
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lH()V

    .line 161
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lD()V

    .line 162
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vt;->lF()V

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/vz;->O(J)Z

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/vu;->md()Lcom/kingroot/kinguser/vu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/vu;->S(Z)V

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/vu;->md()Lcom/kingroot/kinguser/vu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vu;->S(Z)V

    move v0, v1

    .line 170
    goto :goto_0
.end method

.method static synthetic lX()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kingroot/kinguser/vt;->Ln:[I

    return-object v0
.end method


# virtual methods
.method protected lP()Lcom/kingroot/kinguser/vr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/vr",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/vt;->Li:Lcom/kingroot/kinguser/vt$a;

    return-object v0
.end method

.method protected lQ()Lcom/kingroot/kinguser/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/vt;->Lj:Lcom/kingroot/kinguser/c;

    return-object v0
.end method

.method public lU()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/vt;->Lo:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->ny()Z

    .line 109
    return-void
.end method
