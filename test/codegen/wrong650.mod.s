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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <char> %ebp-19 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $32944, %eax            #   0:     mul    t2 <- 32944, 60001
    movl    $60001, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_7                  #   2:     goto   7
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_8                  #   4:     goto   8
l_f0_7:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_8:
    movl    $1, %eax                #   8:     if     1 = t3 goto 2
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   9:     goto   3
l_f0_2:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_4                  #  12:     goto   4
l_f0_3:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f0_4:
    movzbl  -18(%ebp), %eax         #  16:     assign v0 <- t4
    movb    %al, 8(%ebp)           
l_f0_12_while_cond:
    jmp     l_f0_11                 #  18:     goto   11
    call    dummyCHARfunc           #  19:     call   t5 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movl    $2309, %eax             #  20:     add    t6 <- 2309, 53256
    movl    $53256, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_12_while_cond      #  22:     goto   12_while_cond
l_f0_11:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 5 of <array 4 of <array 4 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 4 of <array 3 of <array 7 of <array 3 of <char>>>>>>> %ebp+12 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]

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
    movl    $75819, %eax            #   0:     div    t2 <- 75819, 56898
    movl    $56898, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 9476
    movl    $9476, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t4 <- t3, 60809
    movl    $60809, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t4 <= 7448 goto 1_if_true
    movl    $7448, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
l_f1_1_if_true:
    movl    $18795, %eax            #   6:     param  0 <- 18795
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
l_f1_6_while_cond:
    movl    $84324, %eax            #   9:     if     84324 <= 37405 goto 7_while_body
    movl    $37405, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #  10:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  12:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $54083, %eax            #  17:     sub    t5 <- 54083, 26030
    movl    $26030, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t6 <- t5, 38174
    movl    $38174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     assign v2 <- t6
    movl    %eax, -36(%ebp)        
    call    dummyProcedure          #  20:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 9 of <array 8 of <array 8 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 1 of <array 3 of <array 9 of <array 9 of <char>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movl    $99, %eax               #   0:     if     99 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $0, %eax                #   3:     assign v3 <- 0
    movb    %al, -14(%ebp)         
l_f2_6_while_cond:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    call    WriteLn                 #   8:     call   WriteLn
    movl    $100, %eax              #   9:     if     100 >= 98 goto 10
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_10                
    jmp     l_f2_11                 #  10:     goto   11
l_f2_10:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_12                 #  13:     goto   12
l_f2_11:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_12:
    movzbl  -13(%ebp), %eax         #  17:     assign v3 <- t2
    movb    %al, -14(%ebp)         
l_f2_15_while_cond:
    jmp     l_f2_14                 #  19:     goto   14
    jmp     l_f2_15_while_cond      #  20:     goto   15_while_cond
l_f2_14:
    movl    $100, %eax              #  22:     assign v4 <- 100
    movb    %al, -15(%ebp)         
    jmp     l_f2_0                  #  23:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_23_if_false        #  26:     goto   23_if_false
    jmp     l_f2_21                 #  27:     goto   21
l_f2_23_if_false:
l_f2_21:
    jmp     l_f2_26_if_false        #  30:     goto   26_if_false
    jmp     l_f2_24                 #  31:     goto   24
l_f2_26_if_false:
l_f2_24:
    jmp     l_f2_18                 #  34:     goto   18
l_f2_18:
    movl    $99, %eax               #  36:     assign v4 <- 99
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   3:     if     97 >= t0 goto 3_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    call    dummyBOOLfunc           #   6:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #   7:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
