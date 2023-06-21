.class public Lcom/kingroot/kinguser/bvm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Mt:Landroid/content/SharedPreferences;

.field private final bLs:Ljava/lang/String;

.field private final bPF:Ljava/lang/String;

.field private final bPG:Ljava/lang/String;

.field private final bPH:Ljava/lang/String;

.field private final bPI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bvm;->bLs:Ljava/lang/String;

    .line 22
    const-string v0, "s.i.c.t.pre_"

    iput-object v0, p0, Lcom/kingroot/kinguser/bvm;->bPF:Ljava/lang/String;

    .line 23
    const-string v0, "cache_expiration_day"

    iput-object v0, p0, Lcom/kingroot/kinguser/bvm;->bPG:Ljava/lang/String;

    .line 24
    const-string v0, "software_advertise_request_advertise_app_index"

    iput-object v0, p0, Lcom/kingroot/kinguser/bvm;->bPH:Ljava/lang/String;

    .line 26
    const-string v0, "s.i.c.f.size"

    iput-object v0, p0, Lcom/kingroot/kinguser/bvm;->bPI:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bvm;->Mt:Landroid/content/SharedPreferences;

    .line 32
    return-void
.end method


# virtual methods
.method public aiz()J
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bvm;->Mt:Landroid/content/SharedPreferences;

    const-string v1, "cache_expiration_day"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public as(II)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/bvm;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s.i.c.f.size"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method

.method public kt(I)J
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bvm;->Mt:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s.i.c.t.pre_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ku(I)I
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/bvm;->Mt:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s.i.c.f.size"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public kv(I)J
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/bvm;->Mt:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "software_advertise_last_fetch_time"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(IJ)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bvm;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s.i.c.t.pre_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method public m(IJ)V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/bvm;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "software_advertise_last_fetch_time"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method
