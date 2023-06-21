.class public Lcom/kingroot/kinguser/aiz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static asU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/kingroot/kinguser/akb;->Ad()Lcom/kingroot/kinguser/akb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akb;->Ae()Z

    move-result v0

    sput-boolean v0, Lcom/kingroot/kinguser/aiz;->asU:Z

    return-void
.end method

.method public static yM()J
    .locals 2

    .prologue
    .line 32
    sget-boolean v0, Lcom/kingroot/kinguser/aiz;->asU:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xf731400

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x36ee800

    goto :goto_0
.end method

.method public static yN()J
    .locals 2

    .prologue
    .line 39
    sget-boolean v0, Lcom/kingroot/kinguser/aiz;->asU:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x240c8400

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x19bfcc00

    goto :goto_0
.end method

.method public static yO()J
    .locals 2

    .prologue
    .line 46
    sget-boolean v0, Lcom/kingroot/kinguser/aiz;->asU:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xf731400

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x5265c00

    goto :goto_0
.end method

.method public static yP()I
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/kingroot/kinguser/aiz;->asU:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method
