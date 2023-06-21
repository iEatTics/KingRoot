.class public Lcom/kingroot/kinguser/kx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/hd;


# instance fields
.field private final mCmdFlag:Ljava/lang/String;

.field private final mExitValue:Ljava/lang/Integer;

.field private final mStdErr:Ljava/lang/String;

.field private final mStdOut:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/kx;->mCmdFlag:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/kingroot/kinguser/kx;->mExitValue:Ljava/lang/Integer;

    .line 46
    iput-object p3, p0, Lcom/kingroot/kinguser/kx;->mStdOut:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/kingroot/kinguser/kx;->mStdErr:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static o(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/daemon/CmdResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/hd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/daemon/CmdResult;

    .line 35
    new-instance v3, Lcom/kingroot/kinguser/kx;

    iget-object v4, v0, Lcom/king/uranus/daemon/CmdResult;->mCmdFlag:Ljava/lang/String;

    iget-object v5, v0, Lcom/king/uranus/daemon/CmdResult;->mExitValue:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/king/uranus/daemon/CmdResult;->mStdOut:Ljava/lang/String;

    iget-object v0, v0, Lcom/king/uranus/daemon/CmdResult;->mStdErr:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/kingroot/kinguser/kx;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_0
    return-object v1
.end method


# virtual methods
.method public aV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/kx;->mStdOut:Ljava/lang/String;

    return-object v0
.end method

.method public aW()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/kx;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
