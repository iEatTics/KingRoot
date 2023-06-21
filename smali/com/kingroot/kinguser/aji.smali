.class public Lcom/kingroot/kinguser/aji;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aji$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KCheckRemountMgr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aji;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/kingroot/kinguser/aji$a;)V
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcom/kingroot/kinguser/en;

    invoke-direct {v0}, Lcom/kingroot/kinguser/en;-><init>()V

    .line 48
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ib()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/en;->pt:Ljava/lang/String;

    .line 49
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/en;->ks:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/aav;->dI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/en;->kt:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Cm()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/kingroot/kinguser/en;->ps:J

    .line 52
    new-instance v1, Lcom/kingroot/kinguser/eo;

    invoke-direct {v1}, Lcom/kingroot/kinguser/eo;-><init>()V

    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v2

    const/16 v3, 0x1f40

    new-instance v4, Lcom/kingroot/kinguser/aji$1;

    invoke-direct {v4, p0, p1}, Lcom/kingroot/kinguser/aji$1;-><init>(Lcom/kingroot/kinguser/aji;Lcom/kingroot/kinguser/aji$a;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aji$a;)V
    .locals 1

    .prologue
    .line 36
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aji;->b(Lcom/kingroot/kinguser/aji$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method
