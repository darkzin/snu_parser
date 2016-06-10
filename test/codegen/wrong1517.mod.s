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
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

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
    movl    $27717, %eax            #   0:     if     27717 = 94166 goto 1
    movl    $94166, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t3
    movb    %al, -21(%ebp)         
l_f0_6_while_cond:
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  11:     if     100 = t4 goto 7_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  12:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  14:     goto   6_while_cond
l_f0_5:
l_f0_10_while_cond:
    movl    $62185, %eax            #  17:     add    t5 <- 62185, 5832
    movl    $5832, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $8756, %eax             #  18:     if     8756 > t5 goto 11_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_11_while_body     
    jmp     l_f0_9                  #  19:     goto   9
l_f0_11_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_10_while_cond      #  22:     goto   10_while_cond
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -33(%ebp)   1  [ $v3       <bool> %ebp-33 ]

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
    movl    $21742, %eax            #   0:     mul    t3 <- 21742, 92909
    movl    $92909, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $33944, %eax            #   1:     if     33944 >= t3 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v3 <- t4
    movb    %al, -33(%ebp)         
    movl    $48377, %eax            #  10:     div    t5 <- 48377, 44474
    movl    $44474, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     div    t6 <- t5, 44170
    movl    $44170, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     div    t7 <- t6, 21726
    movl    $21726, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     assign v0 <- t7
    movl    %eax, 8(%ebp)          
    movl    $100, %eax              #  14:     assign v2 <- 100
    movb    %al, 16(%ebp)          

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 83 of <array 92 of <array 58 of <array 95 of <array 76 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 83 of <array 45 of <array 2 of <array 75 of <array 18 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 90 of <array 86 of <array 18 of <array 100 of <array 57 of <bool>>>>>>> %ebp+20 ]
    #    -32(%ebp)   4  [ $v4       <int> %ebp-32 ]

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
    movl    $47594, %eax            #   0:     add    t3 <- 47594, 14952
    movl    $14952, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 29622
    movl    $29622, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v4 <- t4
    movl    %eax, -32(%ebp)        
l_f2_2_while_cond:
    movl    $18631, %eax            #   4:     add    t5 <- 18631, 80306
    movl    $80306, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     if     t5 = 44865 goto 3_while_body
    movl    $44865, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
l_f2_6_while_cond:
    jmp     l_f2_5                  #  11:     goto   5
    call    dummyINTfunc            #  12:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f2_6_while_cond       #  13:     goto   6_while_cond
l_f2_5:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
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
    jmp     l_test_4                #   1:     goto   4
    jmp     l_test_5                #   2:     goto   5
l_test_4:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   5:     goto   6
l_test_5:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movl    $0, %eax                #   9:     if     0 # t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #  10:     goto   0
l_test_2_while_body:
l_test_9_while_cond:
    movl    $4848, %eax             #  13:     if     4848 <= 61001 goto 10_while_body
    movl    $61001, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #  14:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  16:     goto   9_while_cond
l_test_8:
    jmp     l_test_1_while_cond     #  18:     goto   1_while_cond
l_test_0:
l_test_13_while_cond:
    jmp     l_test_12               #  21:     goto   12
    movl    $99, %eax               #  22:     assign v0 <- 99
    movb    %al, v0                
    leal    _str_1, %eax            #  23:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  25:     call   WriteStr
    addl    $4, %esp               
l_test_19_while_cond:
    movl    $40894, %eax            #  27:     if     40894 >= 66899 goto 20_while_body
    movl    $66899, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  28:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  30:     goto   19_while_cond
l_test_18:
    jmp     l_test_13_while_cond    #  32:     goto   13_while_cond
l_test_12:
l_test_26_while_cond:
    movl    $79984, %eax            #  35:     if     79984 <= 92187 goto 27_while_body
    movl    $92187, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_27_while_body   
    jmp     l_test_25               #  36:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  38:     goto   26_while_cond
l_test_25:
    jmp     l_test_22               #  40:     goto   22
l_test_22:
    jmp     l_test_30               #  42:     goto   30
l_test_30:
    movl    $1, %eax                #  44:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_32               #  45:     goto   32
    movl    $0, %eax                #  46:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_32:
    movzbl  -21(%ebp), %eax         #  48:     assign v1 <- t2
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
