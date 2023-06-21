.class Lcom/kingroot/kinguser/avh$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/avh;->a(JLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTq:Ljava/util/List;

.field final synthetic aTr:Lcom/kingroot/kinguser/avh;

.field final synthetic yp:J


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avh;JLjava/util/List;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/avh$2;->aTr:Lcom/kingroot/kinguser/avh;

    iput-wide p2, p0, Lcom/kingroot/kinguser/avh$2;->yp:J

    iput-object p4, p0, Lcom/kingroot/kinguser/avh$2;->aTq:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/avh$2;->aTr:Lcom/kingroot/kinguser/avh;

    iget-wide v2, p0, Lcom/kingroot/kinguser/avh$2;->yp:J

    iget-object v1, p0, Lcom/kingroot/kinguser/avh$2;->aTq:Ljava/util/List;

    invoke-static {v0, v2, v3, v1}, Lcom/kingroot/kinguser/avh;->a(Lcom/kingroot/kinguser/avh;JLjava/util/List;)V

    .line 60
    return-void
.end method
