##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 2 of <array 30 of <array 22 of <array 66 of <char>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $28815, %eax            #   0:     div    t6 <- 28815, 41102
    movl    $41102, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t7 <- t6, 93417
    movl    $93417, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t8 <- t7, 39468
    movl    $39468, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t8
    movl    %eax, -32(%ebp)        
    call    dummyBOOLfunc           #   4:     call   t9 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $99, %eax               #   5:     if     99 <= 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   6:     goto   4_if_false
l_f0_3_if_true:
l_f0_7_while_cond:
    movl    $19970, %eax            #   9:     return 19970
    jmp     l_f0_exit              
    jmp     l_f0_7_while_cond       #  10:     goto   7_while_cond
    jmp     l_f0_2                  #  11:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    movl    $77522, %eax            #   1:     if     77522 >= 37473 goto 4
    movl    $37473, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_4                 
    jmp     l_f1_0                  #   2:     goto   0
l_f1_4:
    jmp     l_f1_0                  #   4:     goto   0
    jmp     l_f1_0                  #   5:     goto   0
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     if     t6 < 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_7                 
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $1, %eax                #  12:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  13:     goto   9
l_f1_8:
    movl    $0, %eax                #  15:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  17:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_16                 #  18:     goto   16
l_f1_16:
    jmp     l_f1_12                 #  20:     goto   12
    jmp     l_f1_13                 #  21:     goto   13
l_f1_12:
    movl    $1, %eax                #  23:     assign t8 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_14                 #  24:     goto   14
l_f1_13:
    movl    $0, %eax                #  26:     assign t8 <- 0
    movb    %al, -15(%ebp)         
l_f1_14:
    movzbl  -15(%ebp), %eax         #  28:     return t8
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $55206, %eax            #   2:     return 55206
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
    movl    $51272, %eax            #   5:     mul    t6 <- 51272, 5601
    movl    $5601, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     assign v0 <- t6
    movl    %eax, 8(%ebp)          
    movl    $0, %eax                #   7:     assign v1 <- 0
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $49370, %eax            #   2:     if     49370 <= t0 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_4                #   5:     goto   4
l_test_4:
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
    jmp     l_test_7                #   8:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_10               #  11:     goto   10
l_test_10:
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_15_while_cond:
    jmp     l_test_exit            
l_test_19_while_cond:
    movl    $97, %eax               #  19:     if     97 > 99 goto 20_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_20_while_body   
    jmp     l_test_18               #  20:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  22:     goto   19_while_cond
l_test_18:
    call    ReadInt                 #  24:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_15_while_cond    #  25:     goto   15_while_cond
    movl    $1, %eax                #  26:     if     1 # 1 goto 24_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_24_if_true      
    jmp     l_test_25_if_false      #  27:     goto   25_if_false
l_test_24_if_true:
    movl    $49758, %eax            #  29:     assign v0 <- 49758
    movl    %eax, v0               
    movl    $43594, %eax            #  30:     param  0 <- 43594
    pushl   %eax                   
    call    f1                      #  31:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #  32:     if     100 > 97 goto 30
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_30              
    jmp     l_test_31               #  33:     goto   31
l_test_30:
    movl    $1, %eax                #  35:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_32               #  36:     goto   32
l_test_31:
    movl    $0, %eax                #  38:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_32:
    movzbl  -22(%ebp), %eax         #  40:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_23               #  41:     goto   23
l_test_25_if_false:
l_test_23:
    movl    $22844, %eax            #  44:     sub    t4 <- 22844, 91091
    movl    $91091, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  45:     sub    t5 <- t4, 85711
    movl    $85711, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  46:     assign v0 <- t5
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
