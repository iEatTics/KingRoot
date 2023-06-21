.class public final Lsm/ar;
.super Lsm/ag;


# static fields
.field static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsm/aq;",
            ">;"
        }
    .end annotation
.end field

.field static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsm/as;",
            ">;"
        }
    .end annotation
.end field

.field static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsm/al;",
            ">;"
        }
    .end annotation
.end field

.field static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsm/an;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsm/aq;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsm/as;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsm/al;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsm/an;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsm/ar;->f:Ljava/util/ArrayList;

    new-instance v0, Lsm/aq;

    invoke-direct {v0}, Lsm/aq;-><init>()V

    sget-object v1, Lsm/ar;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsm/ar;->g:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lsm/as;

    invoke-direct {v1}, Lsm/as;-><init>()V

    sget-object v2, Lsm/ar;->g:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsm/ar;->h:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lsm/al;

    invoke-direct {v1}, Lsm/al;-><init>()V

    sget-object v2, Lsm/ar;->h:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsm/ar;->i:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lsm/an;

    invoke-direct {v1}, Lsm/an;-><init>()V

    sget-object v2, Lsm/ar;->i:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lsm/ag;-><init>()V

    iput-object v1, p0, Lsm/ar;->a:Ljava/util/ArrayList;

    iput-object v1, p0, Lsm/ar;->b:Ljava/util/Map;

    iput-object v1, p0, Lsm/ar;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lsm/ar;->d:I

    iput-object v1, p0, Lsm/ar;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lsm/ar;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lsm/ar;->a:Ljava/util/ArrayList;

    sget-object v0, Lsm/ar;->g:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lsm/ar;->b:Ljava/util/Map;

    sget-object v0, Lsm/ar;->h:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lsm/ar;->c:Ljava/util/Map;

    iget v0, p0, Lsm/ar;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ar;->d:I

    sget-object v0, Lsm/ar;->i:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lsm/ar;->e:Ljava/util/Map;

    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 2

    iget-object v0, p0, Lsm/ar;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsm/ar;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Collection;I)V

    :cond_0
    iget-object v0, p0, Lsm/ar;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsm/ar;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Map;I)V

    :cond_1
    iget-object v0, p0, Lsm/ar;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsm/ar;->c:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Map;I)V

    :cond_2
    iget v0, p0, Lsm/ar;->d:I

    if-eqz v0, :cond_3

    iget v0, p0, Lsm/ar;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    :cond_3
    iget-object v0, p0, Lsm/ar;->e:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsm/ar;->e:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Map;I)V

    :cond_4
    return-void
.end method
