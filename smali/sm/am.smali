.class public final Lsm/am;
.super Lsm/ag;


# static fields
.field static bXk:Lsm/ap;

.field static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsm/ao;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lsm/ap;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsm/ao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsm/ap;

    invoke-direct {v0}, Lsm/ap;-><init>()V

    sput-object v0, Lsm/am;->bXk:Lsm/ap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsm/am;->d:Ljava/util/ArrayList;

    new-instance v0, Lsm/ao;

    invoke-direct {v0}, Lsm/ao;-><init>()V

    sget-object v1, Lsm/am;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lsm/ag;-><init>()V

    iput-object v0, p0, Lsm/am;->a:Lsm/ap;

    iput-object v0, p0, Lsm/am;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lsm/am;->bXk:Lsm/ap;

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/ccr;->a(Lsm/ag;IZ)Lsm/ag;

    move-result-object v0

    check-cast v0, Lsm/ap;

    iput-object v0, p0, Lsm/am;->a:Lsm/ap;

    sget-object v0, Lsm/am;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lsm/am;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 2

    iget-object v0, p0, Lsm/am;->a:Lsm/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsm/am;->a:Lsm/ap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Lsm/ag;I)V

    :cond_0
    iget-object v0, p0, Lsm/am;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsm/am;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Collection;I)V

    :cond_1
    return-void
.end method
