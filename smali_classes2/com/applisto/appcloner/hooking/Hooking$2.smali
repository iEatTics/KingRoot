.class final Lcom/applisto/appcloner/hooking/Hooking$2;
.super Ljava/lang/Object;
.source "Hooking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entity:Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;


# direct methods
.method constructor <init>(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/applisto/appcloner/hooking/Hooking$2;->val$entity:Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addHookClass; hooking using thread executor..."

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/applisto/appcloner/hooking/Hooking$2;->val$entity:Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    iget-object v0, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    iget-object v1, p0, Lcom/applisto/appcloner/hooking/Hooking$2;->val$entity:Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    iget-object v1, v1, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    invoke-static {v0, v1}, Landhook/lib/HookHelper;->hook(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)V

    return-void
.end method
