.class public Lcom/kingroot/kinguser/aku;
.super Lcom/kingroot/kinguser/akm;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aku;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/kinguser/aku$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aku$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aku;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "PeriodicTask"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/akm;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aku$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/aku;-><init>()V

    return-void
.end method

.method public static Gn()Lcom/kingroot/kinguser/aku;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/kinguser/aku;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aku;

    return-object v0
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/aku;->avB:Lcom/kingroot/kinguser/ako;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    return-void
.end method

.method public eS(I)J
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/aku;->avA:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
