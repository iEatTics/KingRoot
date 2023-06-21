.class public Lcom/kingroot/kinguser/cgl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static cep:Landroid/content/Context;

.field static ceq:Ljava/lang/String;

.field private static cer:Lcom/kingroot/kinguser/cgk;

.field static lc:Ljava/lang/String;

.field public static path:Ljava/lang/String;

.field static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/userlog/qqpimsecure/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/cgl;->path:Ljava/lang/String;

    .line 56
    sput-object v2, Lcom/kingroot/kinguser/cgl;->cep:Landroid/content/Context;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/cgl;->lc:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/cgl;->ceq:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/cgl;->version:Ljava/lang/String;

    .line 65
    sput-object v2, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    return-void
.end method

.method public static varargs a(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/cgk;->a(I[Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method public static varargs b(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/cgk;->b(I[Ljava/lang/Object;)V

    .line 160
    :cond_0
    return-void
.end method

.method public static varargs c(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/cgk;->c(I[Ljava/lang/Object;)V

    .line 155
    :cond_0
    return-void
.end method

.method public static varargs d(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/cgk;->d(I[Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static lu(I)Z
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cgl;->cer:Lcom/kingroot/kinguser/cgk;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/cgk;->lu(I)Z

    move-result v0

    goto :goto_0
.end method
