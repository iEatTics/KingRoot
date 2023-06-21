.class Lcom/kingroot/kinguser/bsh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bsh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bLA:Lcom/kingroot/kinguser/bsh;

.field private final synthetic bLB:Ljava/lang/String;

.field private final synthetic bLC:Ljava/lang/String;

.field private final synthetic bLD:Z

.field private final synthetic bLE:Lcom/kingroot/kinguser/bsh$a;

.field private final synthetic val$savePath:Ljava/lang/String;

.field private final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bsh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bsh$1;->bLA:Lcom/kingroot/kinguser/bsh;

    iput-object p2, p0, Lcom/kingroot/kinguser/bsh$1;->val$savePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/bsh$1;->bLB:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/bsh$1;->yz:Ljava/lang/String;

    iput-object p5, p0, Lcom/kingroot/kinguser/bsh$1;->bLC:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/kingroot/kinguser/bsh$1;->bLD:Z

    iput-object p7, p0, Lcom/kingroot/kinguser/bsh$1;->bLE:Lcom/kingroot/kinguser/bsh$a;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bsh$1;->bLA:Lcom/kingroot/kinguser/bsh;

    iget-object v1, p0, Lcom/kingroot/kinguser/bsh$1;->val$savePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/bsh$1;->bLB:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/bsh$1;->yz:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bsh$1;->bLC:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/kingroot/kinguser/bsh$1;->bLD:Z

    iget-object v6, p0, Lcom/kingroot/kinguser/bsh$1;->bLE:Lcom/kingroot/kinguser/bsh$a;

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/bsh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V

    .line 60
    return-void
.end method
