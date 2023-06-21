.class Lcom/kingroot/kinguser/awe$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aUO:Lcom/kingroot/kinguser/awe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awe;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/awe$1;->aUO:Lcom/kingroot/kinguser/awe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/awe$1;->aUO:Lcom/kingroot/kinguser/awe;

    invoke-static {v0}, Lcom/kingroot/kinguser/awe;->a(Lcom/kingroot/kinguser/awe;)V

    .line 55
    return-void
.end method
