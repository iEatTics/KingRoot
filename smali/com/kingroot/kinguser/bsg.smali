.class public Lcom/kingroot/kinguser/bsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Mt:Landroid/content/SharedPreferences;

.field private final bLs:Ljava/lang/String;

.field private final bLt:Ljava/lang/String;

.field private final bLu:Ljava/lang/String;

.field private final bLv:Ljava/lang/String;

.field private final bLw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "Discovery_Sp_0"

    iput-object v0, p0, Lcom/kingroot/kinguser/bsg;->bLs:Ljava/lang/String;

    .line 13
    const-string v0, "requesttime"

    iput-object v0, p0, Lcom/kingroot/kinguser/bsg;->bLt:Ljava/lang/String;

    .line 14
    const-string v0, "feedback_switch"

    iput-object v0, p0, Lcom/kingroot/kinguser/bsg;->bLu:Ljava/lang/String;

    .line 15
    const-string v0, "ad_switch_slop"

    iput-object v0, p0, Lcom/kingroot/kinguser/bsg;->bLv:Ljava/lang/String;

    .line 16
    const-string v0, "pre_ad_request_state"

    iput-object v0, p0, Lcom/kingroot/kinguser/bsg;->bLw:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bre;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Discovery_Sp_0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsg;->Mt:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method


# virtual methods
.method public J(IZ)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/bsg;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pre_ad_request_state"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public j(IJ)V
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/bsg;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requesttime"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public kh(I)J
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/bsg;->Mt:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requesttime"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ki(I)Z
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bsg;->Mt:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pre_ad_request_state"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
