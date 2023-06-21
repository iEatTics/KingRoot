.class public Lcom/kingroot/kinguser/afa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/aex$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aex$a;Lcom/kingroot/kinguser/aex$a;)I
    .locals 3

    .prologue
    .line 12
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    .line 20
    :cond_1
    iget-boolean v0, p1, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    iget-boolean v1, p2, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    if-eq v0, v1, :cond_3

    .line 21
    iget-boolean v0, p1, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    iget-object v1, p2, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    if-eq v0, v1, :cond_4

    .line 24
    iget-object v0, p2, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    iget-object v1, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 31
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 32
    iget-object v1, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/kingroot/kinguser/aex$a;

    check-cast p2, Lcom/kingroot/kinguser/aex$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/afa;->a(Lcom/kingroot/kinguser/aex$a;Lcom/kingroot/kinguser/aex$a;)I

    move-result v0

    return v0
.end method
