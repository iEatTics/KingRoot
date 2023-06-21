.class public Lcom/kingroot/kinguser/akp;
.super Lcom/kingroot/kinguser/akm;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/akp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/kingroot/kinguser/akp$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akp$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akp;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "f_upl"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/akm;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/akp$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/kinguser/akp;-><init>()V

    return-void
.end method

.method public static BJ()Lcom/kingroot/kinguser/akp;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/akp;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/akp;

    return-object v0
.end method


# virtual methods
.method public l(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/akp;->avA:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/akp;->avB:Lcom/kingroot/kinguser/ako;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    return-void
.end method

.method public w(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/akp;->avA:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public x(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/akp;->avB:Lcom/kingroot/kinguser/ako;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    return-void
.end method
