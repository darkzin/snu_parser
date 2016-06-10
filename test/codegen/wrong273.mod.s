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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     return t2
    jmp     l_f0_exit              
    movl    $90227, %eax            #   7:     if     90227 < 14604 goto 11
    movl    $14604, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_11                
    jmp     l_f0_8                  #   8:     goto   8
l_f0_11:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_9                  #  11:     goto   9
l_f0_8:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_9:
    movzbl  -14(%ebp), %eax         #  15:     return t3
    jmp     l_f0_exit              
    call    dummyProcedure          #  16:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t9       <bool> %ebp-34 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 7 of <array 5 of <array 10 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 7 of <array 5 of <array 9 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -35(%ebp)   1  [ $v3       <bool> %ebp-35 ]

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
    movl    $1, %eax                #   0:     if     1 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_4                  #   3:     goto   4
l_f1_4:
    call    dummyCHARfunc           #   5:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_10_while_cond:
    movl    $81229, %eax            #  11:     div    t4 <- 81229, 5770
    movl    $5770, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     mul    t5 <- t4, 72497
    movl    $72497, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $99686, %eax            #  13:     if     99686 <= t5 goto 11_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
    call    dummyINTfunc            #  16:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_f1_15_while_cond:
    movl    $0, %eax                #  18:     if     0 = 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16_while_body     
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  21:     goto   15_while_cond
l_f1_14:
    call    dummyINTfunc            #  23:     call   t7 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $98, %eax               #  24:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    movl    $1, %eax                #  25:     if     1 # 0 goto 21
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_21                
    jmp     l_f1_22                 #  26:     goto   22
l_f1_21:
    movl    $1, %eax                #  28:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_23                 #  29:     goto   23
l_f1_22:
    movl    $0, %eax                #  31:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f1_23:
    movzbl  -33(%ebp), %eax         #  33:     assign v3 <- t8
    movb    %al, -35(%ebp)         
l_f1_26_while_cond:
    jmp     l_f1_25                 #  35:     goto   25
    jmp     l_f1_26_while_cond      #  36:     goto   26_while_cond
l_f1_25:
    movl    $98, %eax               #  38:     if     98 < 97 goto 29
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_29                
    jmp     l_f1_30                 #  39:     goto   30
l_f1_29:
    movl    $1, %eax                #  41:     assign t9 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f1_31                 #  42:     goto   31
l_f1_30:
    movl    $0, %eax                #  44:     assign t9 <- 0
    movb    %al, -34(%ebp)         
l_f1_31:
    movzbl  -34(%ebp), %eax         #  46:     return t9
    jmp     l_f1_exit              
    call    WriteLn                 #  47:     call   WriteLn
    jmp     l_f1_10_while_cond      #  48:     goto   10_while_cond
l_f1_9:
    call    f0                      #  50:     call   t10 <- f0
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 10 of <array 9 of <array 9 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 2 of <array 1 of <array 10 of <array 3 of <int>>>>>>> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $61187, %eax            #   1:     div    t2 <- 61187, 12700
    movl    $12700, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t3 <- t2, 69221
    movl    $69221, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t4 <- t3, 89681
    movl    $89681, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t5 <- t4, 13629
    movl    $13629, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t5 < 68832 goto 2_while_body
    movl    $68832, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    movl    $33670, %eax            #  10:     add    t6 <- 33670, 81568
    movl    $81568, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     if     t6 <= 88861 goto 5
    movl    $88861, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #  12:     goto   6
l_f2_5:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_7                  #  15:     goto   7
l_f2_6:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f2_7:
    movzbl  -33(%ebp), %eax         #  19:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_10_if_true         #  20:     goto   10_if_true
    jmp     l_f2_11_if_false        #  21:     goto   11_if_false
l_f2_10_if_true:
l_f2_14_while_cond:
    movl    $100, %eax              #  24:     if     100 < 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_15_while_body     
    jmp     l_f2_13                 #  25:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  27:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_9                  #  29:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    f0                      #   1:     call   t1 <- f0
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   2:     assign v0 <- 100
    movb    %al, v0                
l_test_4_while_cond:
l_test_7_while_cond:
    jmp     l_test_6                #   5:     goto   6
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
l_test_6:
l_test_10_while_cond:
    movl    $97, %eax               #   9:     if     97 <= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_11_while_body   
    jmp     l_test_9                #  10:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  12:     goto   10_while_cond
l_test_9:
    jmp     l_test_4_while_cond     #  14:     goto   4_while_cond

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
