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
    #    -16(%ebp)   4  [ $v0       <int> %ebp-16 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $1, %eax                #   6:     if     1 = 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   7:     goto   7_if_false
l_f0_6_if_true:
l_f0_10_while_cond:
    jmp     l_f0_9                  #  10:     goto   9
    jmp     l_f0_10_while_cond      #  11:     goto   10_while_cond
l_f0_9:
    movl    $57761, %eax            #  13:     assign v0 <- 57761
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #  14:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_14                 #  15:     goto   14
l_f0_14:
l_f0_18_while_cond:
    movl    $24114, %eax            #  18:     if     24114 <= 15820 goto 19_while_body
    movl    $15820, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_19_while_body     
    jmp     l_f0_17                 #  19:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  21:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_5                  #  23:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $100, %eax              #  26:     if     100 < 99 goto 22_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  27:     goto   23_if_false
l_f0_22_if_true:
    movl    $1, %eax                #  29:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_21                 #  30:     goto   21
l_f0_23_if_false:
l_f0_21:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 49 of <array 39 of <array 49 of <array 36 of <array 86 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -33(%ebp)   1  [ $v3       <char> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     assign v3 <- 100
    movb    %al, -33(%ebp)         
    call    WriteLn                 #   1:     call   WriteLn
l_f1_3_while_cond:
    movl    $51006, %eax            #   3:     div    t4 <- 51006, 48122
    movl    $48122, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     mul    t5 <- t4, 58794
    movl    $58794, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $30468, %eax            #   5:     sub    t6 <- 30468, 65832
    movl    $65832, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t7 <- t6, 70014
    movl    $70014, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     sub    t8 <- t7, 54342
    movl    $54342, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #   8:     if     t5 > t8 goto 4_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_4_while_body      
    jmp     l_f1_2                  #   9:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  11:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 16 of <array 54 of <array 88 of <array 62 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 37 of <array 91 of <array 83 of <array 18 of <array 86 of <int>>>>>>> %ebp+16 ]

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
    call    f0                      #   0:     call   t4 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t5
    jmp     l_f2_exit              
    movl    $54463, %eax            #  10:     mul    t6 <- 54463, 91317
    movl    $91317, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     if     t6 # 50238 goto 6_if_true
    movl    $50238, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
l_f2_6_if_true:
    movl    $97, %eax               #  14:     if     97 < 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  15:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  17:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $97, %eax               #  20:     if     97 <= 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  21:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  23:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_5                  #  26:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $93443, %eax            #  29:     assign v0 <- 93443
    movl    %eax, 8(%ebp)          

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 49 of <array 39 of <array 49 of <array 36 of <array 86 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_5_if_false       #   5:     goto   5_if_false
    jmp     l_test_3                #   6:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
l_test_7_while_cond:
    jmp     l_test_9                #  12:     goto   9
l_test_9:
    movl    $97, %eax               #  14:     if     97 < 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  17:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_18_if_false      #  20:     goto   18_if_false
    jmp     l_test_16               #  21:     goto   16
l_test_18_if_false:
l_test_16:
l_test_20_while_cond:
    movl    $0, %eax                #  25:     if     0 # 1 goto 21_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_21_while_body   
    jmp     l_test_19               #  26:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  28:     goto   20_while_cond
l_test_19:
    jmp     l_test_7_while_cond     #  30:     goto   7_while_cond
    call    ReadInt                 #  31:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_25_while_cond:
l_test_29_while_cond:
    jmp     l_test_28               #  34:     goto   28
    jmp     l_test_29_while_cond    #  35:     goto   29_while_cond
l_test_28:
    movl    $82158, %eax            #  37:     if     82158 # 92524 goto 32_if_true
    movl    $92524, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_32_if_true      
    jmp     l_test_33_if_false      #  38:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  40:     goto   31
l_test_33_if_false:
l_test_31:
    jmp     l_test_exit            
    call    dummyProcedure          #  44:     call   dummyProcedure
    movl    $63104, %eax            #  45:     param  2 <- 63104
    pushl   %eax                   
    movl    $1, %eax                #  46:     param  1 <- 1
    pushl   %eax                   
    leal    v0, %eax                #  47:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  48:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  49:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_25_while_cond    #  52:     goto   25_while_cond

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <array 49 of <array 39 of <array 49 of <array 36 of <array 86 of <char>>>>>>
    .long    5
    .long   49
    .long   39
    .long   49
    .long   36
    .long   86
    .skip 289906344








    # end of global data section
    #-----------------------------------------

    .end
##################################################
