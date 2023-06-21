.class Lcom/kingroot/kinguser/aec$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeL:Lcom/kingroot/kinguser/aec;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aec;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/kingroot/kinguser/aec$3;->aeL:Lcom/kingroot/kinguser/aec;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/aec$3;->aeL:Lcom/kingroot/kinguser/aec;

    invoke-static {v0}, Lcom/kingroot/kinguser/aec;->c(Lcom/kingroot/kinguser/aec;)V

    .line 199
    return-void
.end method
