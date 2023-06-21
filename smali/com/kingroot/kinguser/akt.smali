.class public Lcom/kingroot/kinguser/akt;
.super Lcom/kingroot/kinguser/akm;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/akt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/kingroot/kinguser/akt$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akt$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akt;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "LittleRedDotSettingDao"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/akm;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/akt$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/kinguser/akt;-><init>()V

    return-void
.end method

.method public static Gj()Lcom/kingroot/kinguser/akt;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/kingroot/kinguser/akt;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/akt;

    return-object v0
.end method


# virtual methods
.method public Gk()Z
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/akt;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.0_20170518_05:41:03.072"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Gl()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/akt;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.2.0_20170518_05:41:03.072"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    return-void
.end method
