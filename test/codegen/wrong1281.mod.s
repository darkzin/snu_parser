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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 25 of <array 26 of <array 27 of <array 90 of <array 57 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 99 of <array 94 of <array 99 of <array 65 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 95 of <array 11 of <array 42 of <array 20 of <array 79 of <bool>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $47718, %eax            #   0:     assign v4 <- 47718
    movl    %eax, -20(%ebp)        
l_f0_5_while_cond:
    movl    $42810, %eax            #   2:     if     42810 > 93100 goto 6_while_body
    movl    $93100, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_while_body      
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_while_body:
    movl    $1, %eax                #   5:     return 1
    jmp     l_f0_exit              
    movl    $1, %eax                #   6:     if     1 = 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   7:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #   9:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $0, %eax                #  12:     return 0
    jmp     l_f0_exit              
l_f0_15_while_cond:
    movl    $49193, %eax            #  14:     if     49193 >= 22032 goto 16_while_body
    movl    $22032, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_16_while_body     
    jmp     l_f0_14                 #  15:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  17:     goto   15_while_cond
l_f0_14:
    call    dummyCHARfunc           #  19:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  20:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #  21:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_5_while_cond       #  22:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1                  #  24:     goto   1
l_f0_1:
l_f0_20_while_cond:
    jmp     l_f0_19                 #  27:     goto   19
    movl    $41703, %eax            #  28:     if     41703 = 34455 goto 23_if_true
    movl    $34455, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_23_if_true        
    jmp     l_f0_24_if_false        #  29:     goto   24_if_false
l_f0_23_if_true:
    jmp     l_f0_22                 #  31:     goto   22
l_f0_24_if_false:
l_f0_22:
    call    dummyCHARfunc           #  34:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_20_while_cond      #  35:     goto   20_while_cond
l_f0_19:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 99 of <array 82 of <array 31 of <array 90 of <array 99 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 >= t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $98, %eax               #   7:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #   9:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t4 <- t3, 64709
    movl    $64709, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     sub    t5 <- t4, 11065
    movl    $11065, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     sub    t6 <- t5, 56072
    movl    $56072, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     assign v2 <- t6
    movl    %eax, -36(%ebp)        

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
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $9548, %eax             #   1:     if     9548 <= 11722 goto 2_while_body
    movl    $11722, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $70760, %eax            #   4:     add    t2 <- 70760, 40983
    movl    $40983, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     add    t3 <- t2, 21651
    movl    $21651, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    movl    $91864, %eax            #   9:     assign v0 <- 91864
    movl    %eax, 8(%ebp)          
    leal    _str_1, %eax            #  10:     &()    t4 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  12:     call   WriteStr
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 99 of <array 82 of <array 31 of <array 90 of <array 99 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    jmp     l_test_exit            
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, v0                
l_test_3_while_cond:
    movl    $1, %eax                #   3:     param  1 <- 1
    pushl   %eax                   
    leal    v1, %eax                #   4:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #   6:     call   t1 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #   7:     if     98 = t1 goto 4_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
    jmp     l_test_2                #   8:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #  10:     goto   3_while_cond
l_test_2:
    jmp     l_test_8_if_false       #  12:     goto   8_if_false
l_test_10_while_cond:
    movl    $97, %eax               #  14:     if     97 > 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  15:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  17:     goto   10_while_cond
l_test_9:
l_test_14_while_cond:
    jmp     l_test_13               #  20:     goto   13
    jmp     l_test_14_while_cond    #  21:     goto   14_while_cond
l_test_13:
    jmp     l_test_6                #  23:     goto   6
l_test_8_if_false:
l_test_6:

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
v1:                                 # <array 99 of <array 82 of <array 31 of <array 90 of <array 99 of <bool>>>>>>
    .long    5
    .long   99
    .long   82
    .long   31
    .long   90
    .long   99
    .skip -2052694516








    # end of global data section
    #-----------------------------------------

    .end
##################################################
