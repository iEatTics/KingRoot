.class public Lcom/kingroot/kinguser/but;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bOL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/but;->bOL:Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/kingroot/kinguser/but;->bOL:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/kingroot/kinguser/but;->bOL:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method public static eF(Z)V
    .locals 0

    .prologue
    .line 16
    sput-boolean p0, Lcom/kingroot/kinguser/but;->bOL:Z

    .line 17
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/kingroot/kinguser/but;->bOL:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method
