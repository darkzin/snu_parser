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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 6 of <array 6 of <array 2 of <array 1 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -25(%ebp)   1  [ $v4       <bool> %ebp-25 ]

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
    jmp     l_f0_5                  #   0:     goto   5
l_f0_5:
    movl    $0, %eax                #   2:     if     0 # 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   3:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #   5:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_0                  #   8:     goto   0
l_f0_0:
    movl    $1, %eax                #  10:     assign v4 <- 1
    movb    %al, -25(%ebp)         
l_f0_14_while_cond:
    jmp     l_f0_15_while_body      #  12:     goto   15_while_body
    jmp     l_f0_13                 #  13:     goto   13
l_f0_15_while_body:
    movl    $49741, %eax            #  15:     if     49741 >= 63796 goto 19
    movl    $63796, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_19                
    jmp     l_f0_20                 #  16:     goto   20
l_f0_19:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_21                 #  19:     goto   21
l_f0_20:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_21:
    movzbl  -13(%ebp), %eax         #  23:     return t2
    jmp     l_f0_exit              
l_f0_24_while_cond:
    jmp     l_f0_23                 #  25:     goto   23
    jmp     l_f0_24_while_cond      #  26:     goto   24_while_cond
l_f0_23:
    movl    $98, %eax               #  28:     if     98 < 100 goto 27
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_27                
    jmp     l_f0_28                 #  29:     goto   28
l_f0_27:
    movl    $1, %eax                #  31:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_29                 #  32:     goto   29
l_f0_28:
    movl    $0, %eax                #  34:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_29:
    movzbl  -14(%ebp), %eax         #  36:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_31                 #  37:     goto   31
l_f0_31:
    call    ReadInt                 #  39:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #  40:     return 0
    jmp     l_f0_exit              
    movl    $97, %eax               #  41:     if     97 < 100 goto 37_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_37_if_true        
    jmp     l_f0_38_if_false        #  42:     goto   38_if_false
l_f0_37_if_true:
    jmp     l_f0_36                 #  44:     goto   36
l_f0_38_if_false:
l_f0_36:
    call    ReadInt                 #  47:     call   t5 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f0_14_while_cond      #  48:     goto   14_while_cond
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 9 of <array 6 of <array 10 of <array 5 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 <= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    call    dummyProcedure          #   4:     call   dummyProcedure
l_f1_7_while_cond:
    jmp     l_f1_6                  #   6:     goto   6
    jmp     l_f1_7_while_cond       #   7:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_11_if_false        #   9:     goto   11_if_false
    jmp     l_f1_9                  #  10:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_13_while_cond:
    movl    $98, %eax               #  14:     if     98 < 80755 goto 14_while_body
    movl    $80755, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  15:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  17:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_1                  #  19:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyINTfunc            #  22:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 6 of <array 6 of <array 2 of <array 1 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]
    #   -192(%ebp)  168  [ $v1       <array 2 of <array 6 of <array 6 of <array 2 of <array 1 of <char>>>>>> %ebp-192 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $180, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $45, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-192(%ebp)           # local array 'v1': 5 dimensions
    movl    $2,-188(%ebp)           #   dimension 1: 2 elements
    movl    $6,-184(%ebp)           #   dimension 2: 6 elements
    movl    $6,-180(%ebp)           #   dimension 3: 6 elements
    movl    $2,-176(%ebp)           #   dimension 4: 2 elements
    movl    $1,-172(%ebp)           #   dimension 5: 1 elements

    # function body
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $100, %eax              #   2:     param  3 <- 100
    pushl   %eax                   
    leal    -192(%ebp), %eax        #   3:     &()    t2 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  2 <- t2
    pushl   %eax                   
    movl    $1244, %eax             #   5:     param  1 <- 1244
    pushl   %eax                   
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   8:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   9:     if     t4 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #  10:     goto   1
l_f2_3_while_body:
    movl    $23859, %eax            #  12:     assign v0 <- 23859
    movl    %eax, -24(%ebp)        
l_f2_6_while_cond:
    movl    $24112, %eax            #  14:     if     24112 > 30292 goto 7_while_body
    movl    $30292, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_7_while_body      
    jmp     l_f2_5                  #  15:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  17:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_2_while_cond       #  19:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $180, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $97051, %eax            #   4:     if     97051 > 62586 goto 5_if_true
    movl    $62586, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #  13:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  14:     assign v0 <- t0
    movb    %al, v0                
    leal    _str_1, %eax            #  15:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  17:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
