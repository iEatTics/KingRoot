.class public final Lcom/kingroot/kinguser/bov$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:[B

.field public d:J


# direct methods
.method public constructor <init>(IJ[BJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/bov$a;->a:I

    iput p1, p0, Lcom/kingroot/kinguser/bov$a;->a:I

    iput-wide p2, p0, Lcom/kingroot/kinguser/bov$a;->b:J

    iput-object p4, p0, Lcom/kingroot/kinguser/bov$a;->c:[B

    iput-wide p5, p0, Lcom/kingroot/kinguser/bov$a;->d:J

    return-void
.end method
