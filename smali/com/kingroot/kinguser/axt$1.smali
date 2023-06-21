.class Lcom/kingroot/kinguser/axt$1;
.super Lcom/kingroot/kinguser/axb$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbB:Lcom/kingroot/kinguser/axt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axt;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kingroot/kinguser/axt$1;->bbB:Lcom/kingroot/kinguser/axt;

    invoke-direct {p0}, Lcom/kingroot/kinguser/axb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/afk;)I
    .locals 2

    .prologue
    .line 82
    const-string v0, "com.android.shell"

    iget-object v1, p1, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, -0x1

    .line 89
    :goto_0
    return v0

    .line 86
    :cond_0
    const-string v0, "com.android.shell"

    iget-object v1, p2, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/axb$a;->a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/afk;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 79
    check-cast p1, Lcom/kingroot/kinguser/afk;

    check-cast p2, Lcom/kingroot/kinguser/afk;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/axt$1;->a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/afk;)I

    move-result v0

    return v0
.end method
