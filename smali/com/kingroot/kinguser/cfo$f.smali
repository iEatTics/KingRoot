.class Lcom/kingroot/kinguser/cfo$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field public bYH:Lcom/kingroot/kinguser/cff$d;

.field final synthetic cdp:Lcom/kingroot/kinguser/cfo;

.field public cdt:Lcom/kingroot/kinguser/ccn;

.field public flag:I


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/cfo;ILcom/kingroot/kinguser/ccn;Lcom/kingroot/kinguser/cff$d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iput-object p1, p0, Lcom/kingroot/kinguser/cfo$f;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/cfo$f;->flag:I

    .line 124
    iput-object v1, p0, Lcom/kingroot/kinguser/cfo$f;->cdt:Lcom/kingroot/kinguser/ccn;

    .line 125
    iput-object v1, p0, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    .line 128
    iput p2, p0, Lcom/kingroot/kinguser/cfo$f;->flag:I

    .line 129
    iput-object p3, p0, Lcom/kingroot/kinguser/cfo$f;->cdt:Lcom/kingroot/kinguser/ccn;

    .line 130
    iput-object p4, p0, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    .line 131
    return-void
.end method
