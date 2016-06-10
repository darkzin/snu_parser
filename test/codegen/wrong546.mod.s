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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 1 of <array 8 of <array 9 of <array 9 of <int>>>>>>> %ebp+8 ]
    #    -26(%ebp)   1  [ $v2       <bool> %ebp-26 ]

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
l_f0_1_while_cond:
    movl    $74023, %eax            #   1:     add    t5 <- 74023, 3121
    movl    $3121, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t6 <- t5, 44545
    movl    $44545, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t7 <- t6, 57807
    movl    $57807, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $27024, %eax            #   4:     if     27024 = t7 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    movl    $20242, %eax            #  10:     if     20242 <= 78906 goto 6
    movl    $78906, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6                 
    jmp     l_f0_7                  #  11:     goto   7
l_f0_6:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_8                  #  14:     goto   8
l_f0_7:
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f0_8:
    movzbl  -25(%ebp), %eax         #  18:     assign v2 <- t8
    movb    %al, -26(%ebp)         
    movl    $99843, %eax            #  19:     if     99843 < 47645 goto 11_if_true
    movl    $47645, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  20:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_14                 #  22:     goto   14
l_f0_14:
l_f0_18_while_cond:
    jmp     l_f0_17                 #  25:     goto   17
    jmp     l_f0_18_while_cond      #  26:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_10                 #  28:     goto   10
l_f0_12_if_false:
l_f0_10:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
l_f1_1_while_cond:
    movl    $0, %eax                #   1:     return 0
    jmp     l_f1_exit              
l_f1_5_while_cond:
    movl    $98, %eax               #   3:     if     98 # 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    call    dummyCHARfunc           #   8:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   9:     if     100 < 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_10                
    jmp     l_f1_11                 #  10:     goto   11
l_f1_10:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  13:     goto   12
l_f1_11:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  17:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
    jmp     l_f1_15_if_true         #  19:     goto   15_if_true
    jmp     l_f1_16_if_false        #  20:     goto   16_if_false
l_f1_15_if_true:
    movl    $0, %eax                #  22:     assign v1 <- 0
    movb    %al, -21(%ebp)         
    jmp     l_f1_14                 #  23:     goto   14
l_f1_16_if_false:
l_f1_14:
    call    ReadInt                 #  26:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]

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
    movl    $35115, %eax            #   0:     add    t5 <- 35115, 54916
    movl    $54916, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
    call    f1                      #   2:     call   t6 <- f1
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #   3:     call   t7 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    movl    $12809, %eax            #   0:     sub    t0 <- 12809, 65682
    movl    $65682, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 2057
    movl    $2057, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 72854
    movl    $72854, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            
    movl    $97, %eax               #   6:     if     97 # 100 goto 3
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_3               
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_5                #  10:     goto   5
l_test_4:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_5:
    movzbl  -25(%ebp), %eax         #  14:     assign v0 <- t3
    movb    %al, v0                
    movl    $99, %eax               #  15:     assign v1 <- 99
    movb    %al, v1                
    movl    $49300, %eax            #  16:     div    t4 <- 49300, 26661
    movl    $26661, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #  18:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
