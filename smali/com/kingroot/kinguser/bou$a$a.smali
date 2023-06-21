.class final Lcom/kingroot/kinguser/bou$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bou$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kingroot/kinguser/bou$a$a;->a:I

    iput v0, p0, Lcom/kingroot/kinguser/bou$a$a;->b:I

    iput p1, p0, Lcom/kingroot/kinguser/bou$a$a;->a:I

    return-void
.end method
