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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 56 of <array 76 of <array 26 of <array 49 of <array 99 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 38 of <array 91 of <array 81 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t0
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_3_while_cond:
    movl    $99, %eax               #   4:     if     99 > 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
    jmp     l_f0_7                  #   9:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_3_while_cond       #  12:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 69 of <array 38 of <array 91 of <array 81 of <array 8 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 56 of <array 76 of <array 26 of <array 49 of <array 99 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 79 of <array 28 of <array 2 of <array 19 of <array 93 of <int>>>>>>> %ebp+8 ]
    #   -536792304(%ebp)  536792280  [ $v1       <array 56 of <array 76 of <array 26 of <array 49 of <array 99 of <char>>>>>> %ebp-536792304 ]
    #   -691406424(%ebp)  154614120  [ $v2       <array 69 of <array 38 of <array 91 of <array 81 of <array 8 of <char>>>>>> %ebp-691406424 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $691406412, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $172851603, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-536792304(%ebp)     # local array 'v1': 5 dimensions
    movl    $56,-536792300(%ebp)    #   dimension 1: 56 elements
    movl    $76,-536792296(%ebp)    #   dimension 2: 76 elements
    movl    $26,-536792292(%ebp)    #   dimension 3: 26 elements
    movl    $49,-536792288(%ebp)    #   dimension 4: 49 elements
    movl    $99,-536792284(%ebp)    #   dimension 5: 99 elements
    movl    $5,-691406424(%ebp)     # local array 'v2': 5 dimensions
    movl    $69,-691406420(%ebp)    #   dimension 1: 69 elements
    movl    $38,-691406416(%ebp)    #   dimension 2: 38 elements
    movl    $91,-691406412(%ebp)    #   dimension 3: 91 elements
    movl    $81,-691406408(%ebp)    #   dimension 4: 81 elements
    movl    $8,-691406404(%ebp)     #   dimension 5: 8 elements

    # function body
    movl    $99, %eax               #   0:     if     99 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    movl    $0, %eax                #   7:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_9_while_cond:
    jmp     l_f1_8                  #  12:     goto   8
    movl    $99, %eax               #  13:     param  2 <- 99
    pushl   %eax                   
    leal    -691406424(%ebp), %eax  #  14:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     param  1 <- t0
    pushl   %eax                   
    leal    -536792304(%ebp), %eax  #  16:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  18:     call   t2 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    call    dummyProcedure          #  19:     call   dummyProcedure
    movl    $76044, %eax            #  20:     if     76044 = 89882 goto 14
    movl    $89882, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_14                
    jmp     l_f1_15                 #  21:     goto   15
l_f1_14:
    movl    $1, %eax                #  23:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_16                 #  24:     goto   16
l_f1_15:
    movl    $0, %eax                #  26:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_f1_16:
    movzbl  -22(%ebp), %eax         #  28:     return t3
    jmp     l_f1_exit              
    movl    $0, %eax                #  29:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_9_while_cond       #  30:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_20_if_true         #  32:     goto   20_if_true
l_f1_20_if_true:
l_f1_24_while_cond:
    movl    $100, %eax              #  35:     if     100 > 97 goto 25_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_25_while_body     
    jmp     l_f1_23                 #  36:     goto   23
l_f1_25_while_body:
    jmp     l_f1_24_while_cond      #  38:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_19                 #  40:     goto   19
l_f1_19:

l_f1_exit:
    # epilogue
    addl    $691406412, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 69 of <array 38 of <array 91 of <array 81 of <array 8 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 56 of <array 76 of <array 26 of <array 49 of <array 99 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 97 of <array 14 of <array 65 of <array 56 of <array 74 of <bool>>>>>>> %ebp+8 ]
    #   -536792308(%ebp)  536792280  [ $v1       <array 56 of <array 76 of <array 26 of <array 49 of <array 99 of <char>>>>>> %ebp-536792308 ]
    #   -691406428(%ebp)  154614120  [ $v2       <array 69 of <array 38 of <array 91 of <array 81 of <array 8 of <char>>>>>> %ebp-691406428 ]
    #   -691406432(%ebp)   4  [ $v3       <int> %ebp-691406432 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $691406420, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $172851605, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-536792308(%ebp)     # local array 'v1': 5 dimensions
    movl    $56,-536792304(%ebp)    #   dimension 1: 56 elements
    movl    $76,-536792300(%ebp)    #   dimension 2: 76 elements
    movl    $26,-536792296(%ebp)    #   dimension 3: 26 elements
    movl    $49,-536792292(%ebp)    #   dimension 4: 49 elements
    movl    $99,-536792288(%ebp)    #   dimension 5: 99 elements
    movl    $5,-691406428(%ebp)     # local array 'v2': 5 dimensions
    movl    $69,-691406424(%ebp)    #   dimension 1: 69 elements
    movl    $38,-691406420(%ebp)    #   dimension 2: 38 elements
    movl    $91,-691406416(%ebp)    #   dimension 3: 91 elements
    movl    $81,-691406412(%ebp)    #   dimension 4: 81 elements
    movl    $8,-691406408(%ebp)     #   dimension 5: 8 elements

    # function body
    movl    $98, %eax               #   0:     param  2 <- 98
    pushl   %eax                   
    leal    -691406428(%ebp), %eax  #   1:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t0
    pushl   %eax                   
    leal    -536792308(%ebp), %eax  #   3:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   5:     call   t2 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     return t2
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   7:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    call    ReadInt                 #   8:     call   t4 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     assign v3 <- t4
    movl    %eax, -691406432(%ebp) 

l_f2_exit:
    # epilogue
    addl    $691406420, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $84714, %eax            #   1:     assign v0 <- 84714
    movl    %eax, v0               
    movl    $99, %eax               #   2:     assign v1 <- 99
    movb    %al, v1                
l_test_6_while_cond:
    jmp     l_test_5                #   4:     goto   5
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    call    WriteLn                 #  11:     call   WriteLn
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
