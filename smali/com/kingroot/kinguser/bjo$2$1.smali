.class Lcom/kingroot/kinguser/bjo$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjo$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bxw:Lcom/kingroot/kinguser/bjo$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjo$2;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$2$1;->bxw:Lcom/kingroot/kinguser/bjo$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;)I
    .locals 4

    .prologue
    .line 203
    iget v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->flag:I

    iget v1, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->flag:I

    if-eq v0, v1, :cond_0

    .line 204
    iget v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->flag:I

    iget v1, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->flag:I

    sub-int/2addr v0, v1

    .line 209
    :goto_0
    return v0

    .line 206
    :cond_0
    iget v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->hasLauncherOrMain:I

    iget v1, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->hasLauncherOrMain:I

    if-eq v0, v1, :cond_1

    .line 207
    iget v0, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->hasLauncherOrMain:I

    iget v1, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->hasLauncherOrMain:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 209
    :cond_1
    iget-wide v0, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appUid:J

    iget-wide v2, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appUid:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 200
    check-cast p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    check-cast p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bjo$2$1;->a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;)I

    move-result v0

    return v0
.end method
