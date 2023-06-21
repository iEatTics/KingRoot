.class public final Lcom/kingroot/kinguser/cdg;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private bXg:Lcom/kingroot/kinguser/cdj;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/cdj;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cdg;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/kingroot/kinguser/cdg;->bXg:Lcom/kingroot/kinguser/cdj;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/cdg;->c:I

    iput-object p1, p0, Lcom/kingroot/kinguser/cdg;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/kingroot/kinguser/cdg;->bXg:Lcom/kingroot/kinguser/cdj;

    iput p3, p0, Lcom/kingroot/kinguser/cdg;->c:I

    return-void
.end method
