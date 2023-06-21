.class Lcom/kingroot/kinguser/bjr$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byv:Lcom/kingroot/kinguser/bjr$10;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr$10;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$10$1;->byv:Lcom/kingroot/kinguser/bjr$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$10$1;->byv:Lcom/kingroot/kinguser/bjr$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjr$10;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->s(Lcom/kingroot/kinguser/bjr;)V

    .line 1513
    return-void
.end method
