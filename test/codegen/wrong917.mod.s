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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t8       <char> %ebp-38 ]
    #    -39(%ebp)   1  [ $t9       <bool> %ebp-39 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 2 of <array 6 of <array 7 of <array 7 of <char>>>>>>> %ebp+8 ]

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
    movl    $29178, %eax            #   0:     add    t2 <- 29178, 60794
    movl    $60794, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     sub    t3 <- t2, 36331
    movl    $36331, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t4 <- t3, 51568
    movl    $51568, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t5 <- t4, 35080
    movl    $35080, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t6 <- t5, 19875
    movl    $19875, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $51560, %eax            #   5:     if     51560 # t6 goto 1
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   6:     goto   2
l_f0_1:
    movl    $1, %eax                #   8:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_3                  #   9:     goto   3
l_f0_2:
    movl    $0, %eax                #  11:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_f0_3:
    movzbl  -37(%ebp), %eax         #  13:     return t7
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  14:     call   t8 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movl    $100, %eax              #  15:     if     100 < t8 goto 6
    movzbl  -38(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #  16:     goto   7
l_f0_6:
    movl    $1, %eax                #  18:     assign t9 <- 1
    movb    %al, -39(%ebp)         
    jmp     l_f0_8                  #  19:     goto   8
l_f0_7:
    movl    $0, %eax                #  21:     assign t9 <- 0
    movb    %al, -39(%ebp)         
l_f0_8:
    movzbl  -39(%ebp), %eax         #  23:     return t9
    jmp     l_f0_exit              
l_f0_11_while_cond:
    call    dummyBOOLfunc           #  25:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  26:     if     t10 = 1 goto 15
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_15                
    jmp     l_f0_10                 #  27:     goto   10
l_f0_15:
    jmp     l_f0_10                 #  29:     goto   10
    jmp     l_f0_11_while_cond      #  30:     goto   11_while_cond
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 3 of <array 8 of <array 8 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 5 of <array 7 of <array 5 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 1 of <array 2 of <array 1 of <array 2 of <int>>>>>>> %ebp+20 ]

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
    movl    $25377, %eax            #   1:     if     25377 < 56121 goto 2_while_body
    movl    $56121, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $45784, %eax            #   4:     sub    t2 <- 45784, 96925
    movl    $96925, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t3 <- t2, 80638
    movl    $80638, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     sub    t4 <- t3, 88551
    movl    $88551, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     sub    t5 <- t4, 50462
    movl    $50462, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     if     t5 # 12179 goto 5_if_true
    movl    $12179, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   9:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #  11:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  16:     call   t6 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  17:     if     t6 = 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  18:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  20:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    ReadInt                 #  23:     call   t7 <- ReadInt
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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 6 of <array 9 of <array 10 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 4 of <array 2 of <array 5 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 7 of <array 6 of <array 6 of <array 1 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #   2:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t5 <- t4, 98185
    movl    $98185, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t5
    jmp     l_f2_exit              

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
l_test_5_while_cond:
    movl    $98, %eax               #   4:     if     98 < 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  12:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_11               #  14:     goto   11
l_test_11:
    movl    $1, %eax                #  16:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_13               #  17:     goto   13
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_13:
    movzbl  -14(%ebp), %eax         #  20:     assign v1 <- t1
    movb    %al, v1                
    movl    $58896, %eax            #  21:     param  0 <- 58896
    pushl   %eax                   
    call    WriteInt                #  22:     call   WriteInt
    addl    $4, %esp               

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
