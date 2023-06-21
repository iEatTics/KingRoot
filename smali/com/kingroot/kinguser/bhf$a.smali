.class public Lcom/kingroot/kinguser/bhf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bhf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final bqg:Ljava/lang/String;

.field public final bqh:Ljava/lang/String;

.field public final bqi:J

.field public final bqj:Ljava/lang/String;

.field public final bqk:Ljava/lang/String;

.field public final bql:Ljava/lang/String;

.field public final bqm:J

.field public final bqn:Ljava/lang/String;

.field public final bqo:Ljava/lang/String;

.field public final bqp:I

.field public final bqq:Ljava/lang/String;

.field public final bqr:Ljava/lang/String;

.field public final bqs:I

.field public final bqt:Ljava/lang/String;

.field public final bqu:I

.field public final bqv:I

.field public final bqw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bqx:I

.field public final bqy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic bqz:Lcom/kingroot/kinguser/bhf;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bhf;)V
    .locals 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/kingroot/kinguser/bhf$a;->bqz:Lcom/kingroot/kinguser/bhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->a(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqg:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->b(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqh:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->c(Lcom/kingroot/kinguser/bhf;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqi:J

    .line 51
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->d(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqj:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->e(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqk:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->f(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bql:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->g(Lcom/kingroot/kinguser/bhf;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqm:J

    .line 55
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->h(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqn:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->i(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqo:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->j(Lcom/kingroot/kinguser/bhf;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqp:I

    .line 58
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->k(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqq:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->l(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqr:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->m(Lcom/kingroot/kinguser/bhf;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqs:I

    .line 61
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->n(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqt:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->o(Lcom/kingroot/kinguser/bhf;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqu:I

    .line 63
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->p(Lcom/kingroot/kinguser/bhf;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqv:I

    .line 64
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->q(Lcom/kingroot/kinguser/bhf;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqw:Ljava/util/List;

    .line 65
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->r(Lcom/kingroot/kinguser/bhf;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqx:I

    .line 66
    invoke-static {p1}, Lcom/kingroot/kinguser/bhf;->s(Lcom/kingroot/kinguser/bhf;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf$a;->bqy:Ljava/util/List;

    .line 67
    return-void
.end method
