.class public final Lcom/kingroot/kinguser/blo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static bAc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "http://pmir.3g.qq.com/"

    sput-object v0, Lcom/kingroot/kinguser/blo;->bAc:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static afq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "2.0.0"

    return-object v0
.end method

.method public static afr()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xc8

    return v0
.end method

.method public static afs()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x1f40

    return v0
.end method

.method public static aft()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 47
    if-eqz p0, :cond_0

    const-string v0, "http://wuptest.cs0309.3g.qq.com"

    :goto_0
    sput-object v0, Lcom/kingroot/kinguser/blo;->bAc:Ljava/lang/String;

    .line 49
    return-void

    .line 47
    :cond_0
    const-string v0, "http://pmir.3g.qq.com/"

    goto :goto_0
.end method
