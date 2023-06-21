.class public Lcom/kingroot/kinguser/bzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cch;


# instance fields
.field private Lc:Landroid/content/SharedPreferences$Editor;

.field private bVK:Z

.field private byb:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bzm;->byb:Landroid/content/SharedPreferences;

    .line 40
    return-void
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)Z
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/cgu;->qb()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 195
    :catch_0
    move-exception v0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method private getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/bzm;->Lc:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bzm;->byb:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bzm;->Lc:Landroid/content/SharedPreferences$Editor;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bzm;->Lc:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public W(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzm;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bzm;->bVK:Z

    if-nez v1, :cond_0

    .line 114
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bzm;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/bzm;->byb:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/bzm;->byb:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzm;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bzm;->bVK:Z

    if-nez v1, :cond_0

    .line 135
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bzm;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
