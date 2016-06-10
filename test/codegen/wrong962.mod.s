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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 10 of <int>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $64896, %eax            #   0:     if     64896 <= 26460 goto 1
    movl    $26460, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t3
    movb    %al, -21(%ebp)         
l_f0_6_while_cond:
    call    dummyBOOLfunc           #  10:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     if     t4 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_8                 
    jmp     l_f0_5                  #  12:     goto   5
l_f0_8:
    jmp     l_f0_5                  #  14:     goto   5
    jmp     l_f0_6_while_cond       #  15:     goto   6_while_cond
l_f0_5:
    movl    $98, %eax               #  17:     if     98 > 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  18:     goto   11_if_false
l_f0_10_if_true:
    movl    $43908, %eax            #  20:     if     43908 > 45638 goto 14
    movl    $45638, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_14                
    jmp     l_f0_15                 #  21:     goto   15
l_f0_14:
    movl    $1, %eax                #  23:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_16                 #  24:     goto   16
l_f0_15:
    movl    $0, %eax                #  26:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_16:
    movzbl  -15(%ebp), %eax         #  28:     assign v2 <- t5
    movb    %al, -21(%ebp)         
    movl    $15468, %eax            #  29:     if     15468 >= 93476 goto 19
    movl    $93476, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_19                
    jmp     l_f0_20                 #  30:     goto   20
l_f0_19:
    movl    $1, %eax                #  32:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_21                 #  33:     goto   21
l_f0_20:
    movl    $0, %eax                #  35:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f0_21:
    movzbl  -16(%ebp), %eax         #  37:     assign v2 <- t6
    movb    %al, -21(%ebp)         
l_f0_24_while_cond:
    movl    $38738, %eax            #  39:     if     38738 = 12942 goto 25_while_body
    movl    $12942, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_25_while_body     
    jmp     l_f0_23                 #  40:     goto   23
l_f0_25_while_body:
    jmp     l_f0_24_while_cond      #  42:     goto   24_while_cond
l_f0_23:
    movl    $8706, %eax             #  44:     add    t7 <- 8706, 65004
    movl    $65004, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  45:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  46:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_9                  #  47:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 5 of <array 2 of <array 1 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
l_f1_5_while_cond:
    movl    $44010, %eax            #   3:     if     44010 < 16128 goto 6_while_body
    movl    $16128, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    movl    $31903, %eax            #   8:     if     31903 >= 32389 goto 9_if_true
    movl    $32389, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    movl    $98, %eax               #  11:     if     98 = 99 goto 13
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_13                
    jmp     l_f1_14                 #  12:     goto   14
l_f1_13:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_15                 #  15:     goto   15
l_f1_14:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_15:
    movzbl  -14(%ebp), %eax         #  19:     assign v2 <- t4
    movb    %al, -21(%ebp)         
    call    dummyProcedure          #  20:     call   dummyProcedure
    jmp     l_f1_8                  #  21:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_1                  #  24:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $11636, %eax            #  27:     if     11636 > 97670 goto 19_if_true
    movl    $97670, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  28:     goto   20_if_false
l_f1_19_if_true:
    movl    $49346, %eax            #  30:     sub    t5 <- 49346, 25100
    movl    $25100, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_18                 #  32:     goto   18
l_f1_20_if_false:
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 10 of <array 5 of <array 9 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 4 of <array 3 of <array 2 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $36902, %eax            #   0:     div    t3 <- 36902, 53886
    movl    $53886, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 59498
    movl    $59498, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t5 <- t4, 34147
    movl    $34147, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $13663, %eax            #   3:     add    t6 <- 13663, t5
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #   6:     call   t7 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   9:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   3:     goto   4_while_cond
l_test_7_while_cond:
    jmp     l_test_6                #   5:     goto   6
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
l_test_6:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $62031, %eax            #  11:     add    t0 <- 62031, 17388
    movl    $17388, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     sub    t1 <- t0, 98724
    movl    $98724, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $99, %eax               #  15:     if     99 <= 99 goto 13
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13              
    jmp     l_test_14               #  16:     goto   14
l_test_13:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_15               #  19:     goto   15
l_test_14:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_15:
    movzbl  -21(%ebp), %eax         #  23:     assign v1 <- t2
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
