.class Lcom/kingroot/kinguser/aec$2;
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
    .line 137
    iput-object p1, p0, Lcom/kingroot/kinguser/aec$2;->aeL:Lcom/kingroot/kinguser/aec;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/aec$2;->aeL:Lcom/kingroot/kinguser/aec;

    invoke-static {v0}, Lcom/kingroot/kinguser/aec;->b(Lcom/kingroot/kinguser/aec;)Z

    .line 143
    return-void
.end method
