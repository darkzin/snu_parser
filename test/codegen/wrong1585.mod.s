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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 54 of <array 90 of <array 75 of <array 30 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 51 of <array 63 of <array 40 of <array 49 of <array 51 of <bool>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v4       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t5
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #   2:     if     99 < 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v4 <- t6
    movb    %al, -22(%ebp)         
l_f0_7_while_cond:
    movl    $27127, %eax            #  12:     add    t7 <- 27127, 52352
    movl    $52352, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t7 >= 63567 goto 8_while_body
    movl    $63567, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_8_while_body      
    jmp     l_f0_6                  #  14:     goto   6
l_f0_8_while_body:
    movl    $89270, %eax            #  16:     return 89270
    jmp     l_f0_exit              
    jmp     l_f0_7_while_cond       #  17:     goto   7_while_cond
l_f0_6:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t9       <char> %ebp-23 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 71 of <array 100 of <array 35 of <array 30 of <array 29 of <int>>>>>>> %ebp+12 ]
    #    -24(%ebp)   1  [ $v3       <char> %ebp-24 ]

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
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    call    dummyINTfunc            #   3:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   6:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f1_8_while_cond:
    jmp     l_f1_7                  #   8:     goto   7
    movl    $99, %eax               #   9:     assign v3 <- 99
    movb    %al, -24(%ebp)         
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  11:     call   t8 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
l_f1_14_while_cond:
    movl    $99, %eax               #  13:     if     99 = 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_15_while_body     
    jmp     l_f1_13                 #  14:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  16:     goto   14_while_cond
l_f1_13:
l_f1_18_while_cond:
    jmp     l_f1_18_while_cond      #  19:     goto   18_while_cond
    call    dummyCHARfunc           #  20:     call   t9 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    jmp     l_f1_8_while_cond       #  21:     goto   8_while_cond
l_f1_7:

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
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 35 of <array 74 of <array 15 of <array 51 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    movl    $100, %eax              #   3:     assign v2 <- 100
    movb    %al, 12(%ebp)          
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
    movl    $76124, %eax            #   6:     sub    t5 <- 76124, 28887
    movl    $28887, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     sub    t6 <- t5, 72294
    movl    $72294, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $94172, %eax            #   8:     if     94172 > t6 goto 7_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   9:     goto   8_if_false
l_f2_7_if_true:
    movl    $3450, %eax             #  11:     div    t7 <- 3450, 51417
    movl    $51417, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_if_false:
l_f2_6:
    call    dummyBOOLfunc           #  17:     call   t8 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <char> %ebp-20 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
l_test_5_while_cond:
    call    dummyCHARfunc           #   6:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   7:     if     t1 # 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   8:     goto   4
l_test_6_while_body:
    movl    $100, %eax              #  10:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_5_while_cond     #  11:     goto   5_while_cond
l_test_4:
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $98, %eax               #  14:     if     98 # 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_11              
l_test_11:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_13               #  17:     goto   13
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_13:
    movzbl  -19(%ebp), %eax         #  20:     assign v1 <- t3
    movb    %al, v1                
    call    dummyCHARfunc           #  21:     call   t4 <- dummyCHARfunc
    movb    %al, -20(%ebp)         
    movzbl  -20(%ebp), %eax         #  22:     assign v0 <- t4
    movb    %al, v0                

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
