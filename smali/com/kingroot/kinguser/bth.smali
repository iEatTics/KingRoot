.class public Lcom/kingroot/kinguser/bth;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/bth;->DEBUG:Z

    return-void
.end method

.method public static aG(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/kingroot/kinguser/bth;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "Discovery_Log"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/kingroot/kinguser/bth;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "Discovery_Log"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/kingroot/kinguser/bth;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method public static eD(Z)V
    .locals 0

    .prologue
    .line 11
    sput-boolean p0, Lcom/kingroot/kinguser/bth;->DEBUG:Z

    .line 12
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/kingroot/kinguser/bth;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "Discovery_Log"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method
