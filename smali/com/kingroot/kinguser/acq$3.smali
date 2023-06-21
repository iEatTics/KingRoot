.class Lcom/kingroot/kinguser/acq$3;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/acq;->sa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic abb:Lcom/kingroot/kinguser/acq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/acq;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/kingroot/kinguser/acq$3;->abb:Lcom/kingroot/kinguser/acq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/acq$3;->abb:Lcom/kingroot/kinguser/acq;

    invoke-static {v0}, Lcom/kingroot/kinguser/acq;->d(Lcom/kingroot/kinguser/acq;)V

    .line 337
    return-void
.end method
