.class Lcom/kingroot/kinguser/asm$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asm;->uy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNc:Lcom/kingroot/kinguser/asm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asm;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/kingroot/kinguser/asm$1;->aNc:Lcom/kingroot/kinguser/asm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/asm$1;->aNc:Lcom/kingroot/kinguser/asm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asm;->a(Lcom/kingroot/kinguser/asm;Z)Lcom/kingroot/kinguser/br;

    .line 77
    return-void
.end method
