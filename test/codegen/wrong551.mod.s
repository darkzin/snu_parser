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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 6 of <array 9 of <array 7 of <array 7 of <int>>>>>>> %ebp+12 ]
    #    -18(%ebp)   1  [ $v3       <bool> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_5                  #   3:     goto   5
l_f0_5:
    movl    $0, %eax                #   5:     assign v3 <- 0
    movb    %al, -18(%ebp)         
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_10_while_cond:
    movl    $81718, %eax            #  10:     if     81718 = 84091 goto 11_while_body
    movl    $84091, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_while_body:
l_f0_14_while_cond:
    movl    $83314, %eax            #  14:     if     83314 # 84178 goto 15_while_body
    movl    $84178, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_15_while_body     
    jmp     l_f0_13                 #  15:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  17:     goto   14_while_cond
l_f0_13:
l_f0_18_while_cond:
    movl    $99, %eax               #  20:     if     99 < 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_19_while_body     
    jmp     l_f0_17                 #  21:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  23:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_10_while_cond      #  25:     goto   10_while_cond
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 1 of <array 7 of <array 7 of <array 2 of <int>>>>>>> %ebp+8 ]
    #    -33(%ebp)   1  [ $v2       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     if     97 >= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t1
    movb    %al, -33(%ebp)         
    movl    $49250, %eax            #   9:     sub    t2 <- 49250, 10554
    movl    $10554, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t3 <- t2, 60385
    movl    $60385, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t4 <- t3, 95560
    movl    $95560, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t5 <- t4, 61948
    movl    $61948, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     assign v3 <- t5
    movl    %eax, -40(%ebp)        
    jmp     l_f1_9                  #  14:     goto   9
    jmp     l_f1_7_if_true          #  15:     goto   7_if_true
l_f1_9:
    jmp     l_f1_8_if_false         #  17:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  19:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 3 of <array 2 of <array 8 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 8 of <array 1 of <array 3 of <array 7 of <char>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 > 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $11221, %eax            #   5:     if     11221 <= 92976 goto 6_while_body
    movl    $92976, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
    call    ReadInt                 #  10:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
l_f2_14_while_cond:
    jmp     l_f2_13                 #  15:     goto   13
    jmp     l_f2_14_while_cond      #  16:     goto   14_while_cond
l_f2_13:
    movl    $99, %eax               #  18:     if     99 < 97 goto 17_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  19:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  21:     goto   16
l_f2_18_if_false:
l_f2_16:
l_f2_21_while_cond:
    movl    $100, %eax              #  25:     if     100 # 98 goto 22_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_22_while_body     
    jmp     l_f2_20                 #  26:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  28:     goto   21_while_cond
l_f2_20:
    jmp     l_f2_exit              
    jmp     l_f2_10                 #  31:     goto   10
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $28644, %eax            #   0:     assign v0 <- 28644
    movl    %eax, v0               
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $100, %eax              #   3:     assign v1 <- 100
    movb    %al, v1                
    movl    $98, %eax               #   4:     if     98 = 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $0, %eax                #   9:     assign v2 <- 0
    movb    %al, v2                
    jmp     l_test_4                #  10:     goto   4
l_test_6_if_false:
l_test_4:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
