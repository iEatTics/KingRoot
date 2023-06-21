.class Lcom/kingroot/kinguser/awo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static aUV:Lcom/kingroot/kinguser/aws;

.field private static final aUW:Lcom/kingroot/kinguser/cas;

.field private static final aUX:Lcom/kingroot/kinguser/cau;

.field private static final aUY:Lcom/kingroot/kinguser/pv;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/awo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aUZ:Lcom/kingroot/kinguser/cbe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_KuSharkManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/awo;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/kingroot/kinguser/awo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awo;->sInstance:Lcom/kingroot/kinguser/cce;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/awo;->aUV:Lcom/kingroot/kinguser/aws;

    .line 194
    new-instance v0, Lcom/kingroot/kinguser/awo$4;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awo$4;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awo;->aUW:Lcom/kingroot/kinguser/cas;

    .line 272
    new-instance v0, Lcom/kingroot/kinguser/awo$5;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awo$5;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awo;->aUX:Lcom/kingroot/kinguser/cau;

    .line 295
    new-instance v0, Lcom/kingroot/kinguser/awo$6;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awo$6;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awo;->aUY:Lcom/kingroot/kinguser/pv;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Lcom/kingroot/kinguser/awo$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awo$7;-><init>(Lcom/kingroot/kinguser/awo;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awo;->aUZ:Lcom/kingroot/kinguser/cbe;

    return-void
.end method

.method public static Tc()Lcom/kingroot/kinguser/awo;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/kingroot/kinguser/awo;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awo;

    return-object v0
.end method

.method private Td()Lcom/kingroot/kinguser/aws;
    .locals 1

    .prologue
    .line 533
    sget-object v0, Lcom/kingroot/kinguser/awo;->aUV:Lcom/kingroot/kinguser/aws;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lcom/kingroot/kinguser/awo$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awo$8;-><init>(Lcom/kingroot/kinguser/awo;)V

    sput-object v0, Lcom/kingroot/kinguser/awo;->aUV:Lcom/kingroot/kinguser/aws;

    .line 558
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/awo;->aUV:Lcom/kingroot/kinguser/aws;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/awo;)Lcom/kingroot/kinguser/aws;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/kingroot/kinguser/awo;->Td()Lcom/kingroot/kinguser/aws;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;[BLcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;)V
    .locals 3

    .prologue
    .line 110
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    .line 112
    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p3}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 113
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/awo$2;

    invoke-direct {v2, p0, p4}, Lcom/kingroot/kinguser/awo$2;-><init>(Lcom/kingroot/kinguser/awo;Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;[BLjava/lang/String;[BLcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;)V
    .locals 4

    .prologue
    .line 136
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    .line 138
    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p3}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 141
    invoke-static {p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/taf/jce/JceStruct;

    .line 143
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p5}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 144
    invoke-virtual {v1, v2}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/awo$3;

    invoke-direct {v3, p0, p6}, Lcom/kingroot/kinguser/awo$3;-><init>(Lcom/kingroot/kinguser/awo;Lcom/kingroot/kinguser/net/shark/IKSharkRemoteListener;)V

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/kingroot/kinguser/c;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2}, Lcom/qq/taf/jce/JceInputStream;-><init>()V

    .line 179
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 180
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 181
    if-eqz v0, :cond_0

    .line 184
    new-instance v4, Lcom/kingroot/kinguser/b;

    invoke-direct {v4}, Lcom/kingroot/kinguser/b;-><init>()V

    .line 185
    invoke-virtual {v2, v0}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 186
    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/b;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 187
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/cbj;->akz()Lcom/kingroot/kinguser/cbj;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/cbj;->b(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 7

    .prologue
    .line 93
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ih()Z

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cbx;->eD(Z)V

    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/cbx;->g([Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/awo;->aUW:Lcom/kingroot/kinguser/cas;

    sget-object v3, Lcom/kingroot/kinguser/awo;->aUX:Lcom/kingroot/kinguser/cau;

    .line 98
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ih()Z

    move-result v4

    .line 99
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->is()Z

    move-result v5

    const/4 v6, 0x1

    .line 95
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cav;->a(Landroid/content/Context;Lcom/kingroot/kinguser/cas;Lcom/kingroot/kinguser/cau;ZZZ)V

    .line 101
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/awo;->aUY:Lcom/kingroot/kinguser/pv;

    iget-object v2, p0, Lcom/kingroot/kinguser/awo;->aUZ:Lcom/kingroot/kinguser/cbe;

    new-instance v3, Lcom/kingroot/kinguser/awr;

    invoke-direct {v3}, Lcom/kingroot/kinguser/awr;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/cay;->a(Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;Lcom/kingroot/kinguser/cbh;)V

    .line 105
    return-void
.end method
