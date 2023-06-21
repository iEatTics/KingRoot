.class public Lcom/kingroot/kinguser/air;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final asl:Z

.field public static final asm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v3, 0x17

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/air;->asl:Z

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v3, 0xe

    if-le v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/kingroot/kinguser/air;->asm:Z

    .line 204
    return-void

    :cond_0
    move v0, v2

    .line 167
    goto :goto_0

    :cond_1
    move v1, v2

    .line 205
    goto :goto_1
.end method

.method public static final yb()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public static final yc()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public static final yd()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
