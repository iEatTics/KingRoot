.class Lcom/kingroot/kinguser/afi$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/afi$3;->run()V
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
        "Lcom/kingroot/kinguser/aex$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ahI:Lcom/kingroot/kinguser/afi$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afi$3;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/kingroot/kinguser/afi$3$1;->ahI:Lcom/kingroot/kinguser/afi$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aex$a;Lcom/kingroot/kinguser/aex$a;)I
    .locals 2

    .prologue
    .line 332
    iget-boolean v0, p1, Lcom/kingroot/kinguser/aex$a;->afR:Z

    iget-boolean v1, p2, Lcom/kingroot/kinguser/aex$a;->afR:Z

    if-eq v0, v1, :cond_1

    .line 333
    iget-boolean v0, p1, Lcom/kingroot/kinguser/aex$a;->afR:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 335
    :goto_0
    return v0

    .line 333
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    iget-object v1, p2, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 329
    check-cast p1, Lcom/kingroot/kinguser/aex$a;

    check-cast p2, Lcom/kingroot/kinguser/aex$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/afi$3$1;->a(Lcom/kingroot/kinguser/aex$a;Lcom/kingroot/kinguser/aex$a;)I

    move-result v0

    return v0
.end method
