.class public Lcom/kingroot/kinguser/bjq$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingroot/kinguser/bjq$d;",
        ">;"
    }
.end annotation


# instance fields
.field public afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

.field public afR:Z

.field public bxZ:I

.field public bya:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

.field public description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bjq$d;->bxZ:I

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bjq$d;)I
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    if-eqz v0, :cond_2

    .line 807
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 814
    :goto_0
    return v0

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 814
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 795
    check-cast p1, Lcom/kingroot/kinguser/bjq$d;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjq$d;->a(Lcom/kingroot/kinguser/bjq$d;)I

    move-result v0

    return v0
.end method
