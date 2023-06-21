.class public Lcom/kingroot/kinguser/afz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/afz$a;
    }
.end annotation


# instance fields
.field private Mt:Landroid/content/SharedPreferences;

.field private ajz:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/kingroot/kinguser/afz;->Mt:Landroid/content/SharedPreferences;

    .line 18
    iput-object v0, p0, Lcom/kingroot/kinguser/afz;->ajz:Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/afz;->vH()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/afz$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/afz;-><init>()V

    return-void
.end method

.method public static vG()Lcom/kingroot/kinguser/afz;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/afz$a;->vI()Lcom/kingroot/kinguser/afz;

    move-result-object v0

    return-object v0
.end method

.method private vH()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "KR_ad_file"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kingroot/kinguser/afz;->Mt:Landroid/content/SharedPreferences;

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/afz;->Mt:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, Lcom/kingroot/kinguser/afz;->ajz:Landroid/content/SharedPreferences$Editor;

    .line 37
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/afz;->ajz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/afz;->ajz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method

.method public fl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VER:_20170511_02:12:17.629"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/kingroot/kinguser/afz;->Mt:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/kingroot/kinguser/afz;->ajz:Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method

.method public fm(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VER:_20170511_02:12:17.629"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/kingroot/kinguser/afz;->Mt:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
