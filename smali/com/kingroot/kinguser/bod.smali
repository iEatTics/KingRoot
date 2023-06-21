.class public final Lcom/kingroot/kinguser/bod;
.super Lcom/kingroot/kinguser/boa;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/kingroot/kinguser/boa$a;ZLcom/kingroot/kinguser/bog;)V
    .locals 0

    invoke-direct {p0}, Lcom/kingroot/kinguser/boa;-><init>()V

    iput-object p5, p0, Lcom/kingroot/kinguser/bod;->bFj:Lcom/kingroot/kinguser/bog;

    iput-object p1, p0, Lcom/kingroot/kinguser/bod;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kingroot/kinguser/bod;->b:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/kingroot/kinguser/bod;->c:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/kingroot/kinguser/bod;->a(Lcom/kingroot/kinguser/boa$a;)V

    :cond_0
    return-void
.end method
