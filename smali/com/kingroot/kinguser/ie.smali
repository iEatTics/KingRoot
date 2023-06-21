.class Lcom/kingroot/kinguser/ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/kg$a;


# instance fields
.field final synthetic rm:I

.field final synthetic rn:Ljava/lang/String;

.field final synthetic ro:Lcom/kingroot/kinguser/id;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/id;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kingroot/kinguser/ie;->ro:Lcom/kingroot/kinguser/id;

    iput p2, p0, Lcom/kingroot/kinguser/ie;->rm:I

    iput-object p3, p0, Lcom/kingroot/kinguser/ie;->rn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/kf;)V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ie;->ro:Lcom/kingroot/kinguser/id;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/id;->a(Lcom/kingroot/kinguser/id;II)V

    .line 97
    invoke-virtual {p1}, Lcom/kingroot/kinguser/kf;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/kingroot/kinguser/ie;->ro:Lcom/kingroot/kinguser/id;

    iget v2, p0, Lcom/kingroot/kinguser/ie;->rm:I

    iget-object v3, p0, Lcom/kingroot/kinguser/ie;->rn:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/kingroot/kinguser/id;->a(Lcom/kingroot/kinguser/id;ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/kf;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/ie;->ro:Lcom/kingroot/kinguser/id;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/id;->a(Lcom/kingroot/kinguser/id;II)V

    .line 105
    return-void
.end method
