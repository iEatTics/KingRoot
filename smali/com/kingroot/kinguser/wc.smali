.class public Lcom/kingroot/kinguser/wc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/wc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final Mt:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/kingroot/kinguser/wc$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/wc$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/wc;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "kinglib_setting"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/wc;->Mt:Landroid/content/SharedPreferences;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/wc$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/wc;-><init>()V

    return-void
.end method

.method public static nh()Lcom/kingroot/kinguser/wc;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/kingroot/kinguser/wc;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/wc;

    return-object v0
.end method


# virtual methods
.method public T(J)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/wc;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_static_report_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public ni()J
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/wc;->Mt:Landroid/content/SharedPreferences;

    const-string v1, "last_static_report_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
