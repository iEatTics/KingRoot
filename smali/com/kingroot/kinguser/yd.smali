.class public abstract Lcom/kingroot/kinguser/yd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public US:Ljava/lang/String;

.field public UT:I

.field public UU:Ljava/lang/String;

.field public UV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/kingroot/kinguser/yd;->oA()Lcom/kingroot/kinguser/yd;

    move-result-object v0

    return-object v0
.end method

.method public abstract k(Landroid/view/View;)V
.end method

.method public oA()Lcom/kingroot/kinguser/yd;
    .locals 2

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yd;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
